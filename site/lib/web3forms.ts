export const INFORMATION_REQUEST_ACCESS_KEY =
  'baa2f558-d40b-48c6-8080-8b2e5e0204c5';
export const EMAIL_ALERT_ACCESS_KEY = '7f393ec6-5744-4340-bb55-68f7a662d6ae';

export type SubmissionStatus =
  | { state: 'idle'; message: '' }
  | { state: 'sending' | 'success' | 'error'; message: string };

export const idleSubmission: SubmissionStatus = { state: 'idle', message: '' };

export async function submitWeb3Form(
  form: HTMLFormElement,
  accessKey: string,
  details: Record<string, string>,
) {
  const formData = new FormData(form);
  const payload: Record<string, string> = {};
  formData.forEach((value, key) => {
    if (typeof value === 'string') payload[key] = value;
  });
  Object.assign(payload, details, { access_key: accessKey });

  const response = await fetch('https://api.web3forms.com/submit', {
    method: 'POST',
    headers: { 'Content-Type': 'application/json', Accept: 'application/json' },
    body: JSON.stringify(payload),
  });
  const result = (await response.json().catch(() => null)) as {
    success?: boolean;
    message?: string;
  } | null;
  if (!response.ok || !result?.success) {
    throw new Error(
      result?.message || 'The form could not be submitted. Please try again.',
    );
  }
  return result;
}
