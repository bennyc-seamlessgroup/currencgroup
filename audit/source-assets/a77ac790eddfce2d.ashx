

:root {
/* --evgRootFontSize is defined in evergreen.css */

/*** START COLOR VARIABLES ***/
--evgBodyTextColor: #585555;
--evgBorderColor: #dddddd;
--evgPrimaryColor: #06607f;
--evgAltColor: #6f3a8f;
--evgBrand1Color: #ffffff;
--evgBrand2Color: #ffffff;
--evgBrand3Color: #ffffff;
--evgBrand4Color: #ffffff;
--evgBrand5Color: #ffffff;
--evgLightColor: #ffffff;
--evgGreyColor: #fafafa;
--evgGreyDarkColor: #374448;
--evgDarkColor: #283033;
--evgDarkenColor: rgba(0, 0, 0, 0.05);
--evgLightenColor: rgba(255, 255, 255, 0.05);
--evgLightOverlayColor: rgba(255, 255, 255, 0.6);
--evgDarkOverlayColor: rgba(0, 0, 0, 0.6);
--evgErrorColor: #b72121;
--evgSuccessColor: #006613;
--evgInheritColor: inherit;
/* Focus ring inner color: theme-aware so visible on light and dark backgrounds; customizable via LightColor in branding. */
--evgFocusRingLightColor: var(--evgLightColor, #fff);
/*** END COLOR VARIABLES ***/

/*** START BANNER VARIABLES ***/

/** Static **/
--evgBannersStaticBackgroundImageAltText: inherit; /* Empty or N/A */
--evgBannersStaticBackgroundImagePosition: inherit; /* Empty or N/A */
--evgBannersStaticBackgroundImageSizing: inherit; /* Empty or N/A */
--evgBannersStaticBackgroundVideoShowOnTablet: block;
--evgBannersStaticMinimumHeightSizeL: px;
--evgBannersStaticMinimumHeightSizeM: px;
--evgBannersStaticMinimumHeightSizeS: px;
--evgBannersStaticBorderRadius: px;
--evgBannersStaticBannerCoverage: bannerAndHeader;
/*** END BANNER VARIABLES ***/

/*** START MODULE VARIABLES ***/

/** Padding **/
--evgPaddingContainerPadding: 20px;
--evgPaddingItemPadding: 30px;

/** Border **/

/** ModuleName **/
--evgModuleNameFontTypography: h2;
--evgModuleNameFontFamily: Lato;
--evgModuleNameFontSizeL: calc(var(--evgRootFontSize) * 3.6);
--evgModuleNameFontSizeM: calc(var(--evgRootFontSize) * 2.7);
--evgModuleNameFontSizeS: calc(var(--evgRootFontSize) * 2.7);
--evgModuleNameFontColor: var(--evgBodyTextColor);
--evgModuleNameFontWeight: normal;
--evgModuleNameFontLineHeight: 1.3;
--evgModuleNameFontCapitalization: none;
--evgModuleNameFontAlignment: left;

/** ModuleItem **/
--evgModuleItemUnderline: 0;
--evgModuleItemUnderlineStyle: solid;
--evgModuleItemUnderlineColor: var(--evgBodyTextColor);

/** ModuleItemTitle **/
--evgModuleItemTitleFontTypography: h4;
--evgModuleItemTitleFontFamily: Lato;
--evgModuleItemTitleFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgModuleItemTitleFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgModuleItemTitleFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgModuleItemTitleFontColor: var(--evgBodyTextColor);
--evgModuleItemTitleFontHoverColor: var(--evgLightColor);
--evgModuleItemTitleFontFocusColor: var(--evgLightColor);
--evgModuleItemTitleFontWeight: normal;
--evgModuleItemTitleFontLineHeight: 1.4;
--evgModuleItemTitleFontCapitalization: none;

/** ModuleItemSubtitle **/
--evgModuleItemSubtitleFontTypography: h5;
--evgModuleItemSubtitleFontFamily: Lato;
--evgModuleItemSubtitleFontSizeL: calc(var(--evgRootFontSize) * 1.3);
--evgModuleItemSubtitleFontSizeM: calc(var(--evgRootFontSize) * 1.3);
--evgModuleItemSubtitleFontSizeS: calc(var(--evgRootFontSize) * 1.3);
--evgModuleItemSubtitleFontColor: var(--evgAltColor);
--evgModuleItemSubtitleFontWeight: normal;
--evgModuleItemSubtitleFontLineHeight: 1.3;
--evgModuleItemSubtitleFontCapitalization: none;

/** ModuleBackground **/
--evgModuleBackgroundColor: var(--evgAltColor);
--evgModuleBackgroundItemBackgroundColor: var(--evgAltColor);
--evgModuleBackgroundBorderRadius: 0;
--evgModuleBackgroundItemBorderRadius: 0;

/** DateTime **/
--evgDateTimeFontTypography: caption;
--evgDateTimeFontFamily: Lato;
--evgDateTimeFontSizeL: calc(var(--evgRootFontSize) * 1.3);
--evgDateTimeFontSizeM: calc(var(--evgRootFontSize) * 1.3);
--evgDateTimeFontSizeS: calc(var(--evgRootFontSize) * 1.3);
--evgDateTimeFontColor: var(--evgAltColor);
--evgDateTimeFontWeight: normal;
--evgDateTimeFontLineHeight: 1.3;
--evgDateTimeFontCapitalization: none;
/*** END MODULE VARIABLES ***/

/*** START COMPONENT VARIABLES ***/

/** Body **/
--evgBodyFontColor: var(--evgBodyTextColor);

/** Hyperlink **/
--evgHyperlinkFontTypography: body;
--evgHyperlinkFontFamily: Lato;
--evgHyperlinkFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgHyperlinkFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgHyperlinkFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgHyperlinkFontColor: var(--evgAltColor);
--evgHyperlinkFontHoverColor: var(--evgPrimaryColor);
--evgHyperlinkFontFocusColor: var(--evgAltColor);
--evgHyperlinkFontWeight: normal;
--evgHyperlinkFontStyle: normal;
--evgHyperlinkFontLineHeight: 1.3;
--evgHyperlinkFontCapitalization: none;
--evgHyperlinkDecorationTextDecoration: none;
--evgHyperlinkDecorationTextDecorationHover: none;
--evgHyperlinkDecorationTextDecorationFocus: none;
--evgHyperlinkDecorationTextDecorationColor: var(--evgInheritColor);
--evgHyperlinkDecorationTextDecorationHoverColor: var(--evgInheritColor);
--evgHyperlinkDecorationTextDecorationFocusColor: var(--evgInheritColor);

/** Button **/
--evgButtonFontTypography: body;
--evgButtonFontFamily: Lato;
--evgButtonFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgButtonFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgButtonFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgButtonFontColor: var(--evgLightColor);
--evgButtonFontHoverColor: var(--evgLightColor);
--evgButtonFontFocusColor: var(--evgLightColor);
--evgButtonFontWeight: normal;
--evgButtonFontStyle: normal;
--evgButtonFontLineHeight: 1.3;
--evgButtonFontCapitalization: none;
--evgButtonBorderColor: var(--evgPrimaryColor);
--evgButtonBorderHoverColor: var(--evgAltColor);
--evgButtonBorderFocusColor: var(--evgAltColor);
--evgButtonBorderRadius: 0;
--evgButtonBackgroundColor: var(--evgPrimaryColor);
--evgButtonBackgroundHoverColor: var(--evgAltColor);
--evgButtonBackgroundFocusColor: var(--evgAltColor);
--evgButtonPaddingItemPadding: initial;
--evgButtonPaddingVerticalPadding: 20px;
--evgButtonPaddingTop: initial;
--evgButtonPaddingBottom: initial;
--evgButtonPaddingLeft: initial;
--evgButtonPaddingRight: initial;
--evgButtonDecorationTextDecoration: none;
--evgButtonDecorationTextDecorationHover: none;
--evgButtonDecorationTextDecorationFocus: none;
--evgButtonDecorationTextDecorationColor: var(--evgLightColor);
--evgButtonDecorationTextDecorationHoverColor: var(--evgLightColor);
--evgButtonDecorationTextDecorationFocusColor: var(--evgLightColor);

/** ButtonAlt **/
--evgButtonAltFontTypography: body;
--evgButtonAltFontFamily: Lato;
--evgButtonAltFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgButtonAltFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgButtonAltFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgButtonAltFontColor: var(--evgPrimaryColor);
--evgButtonAltFontHoverColor: var(--evgLightColor);
--evgButtonAltFontFocusColor: var(--evgLightColor);
--evgButtonAltFontWeight: normal;
--evgButtonAltFontStyle: normal;
--evgButtonAltFontLineHeight: 1.3;
--evgButtonAltFontCapitalization: none;
--evgButtonAltBorderColor: var(--evgLightColor);
--evgButtonAltBorderHoverColor: var(--evgPrimaryColor);
--evgButtonAltBorderFocusColor: var(--evgPrimaryColor);
--evgButtonAltBorderRadius: 0;
--evgButtonAltBackgroundColor: var(--evgLightColor);
--evgButtonAltBackgroundHoverColor: var(--evgPrimaryColor);
--evgButtonAltBackgroundFocusColor: var(--evgPrimaryColor);
--evgButtonAltPaddingItemPadding: initial;
--evgButtonAltPaddingVerticalPadding: 20px;
--evgButtonAltPaddingTop: initial;
--evgButtonAltPaddingBottom: initial;
--evgButtonAltPaddingLeft: initial;
--evgButtonAltPaddingRight: initial;
--evgButtonAltDecorationTextDecoration: none;
--evgButtonAltDecorationTextDecorationHover: none;
--evgButtonAltDecorationTextDecorationFocus: none;
--evgButtonAltDecorationTextDecorationColor: var(--evgLightColor);
--evgButtonAltDecorationTextDecorationHoverColor: var(--evgLightColor);
--evgButtonAltDecorationTextDecorationFocusColor: var(--evgLightColor);

/** Dropdown **/
--evgDropdownFontTypography: body;
--evgDropdownFontFamily: Lato;
--evgDropdownFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgDropdownFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgDropdownFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgDropdownFontColor: var(--evgAltColor);
--evgDropdownFontFocusColor: var(--evgAltColor);
--evgDropdownFontWeight: normal;
--evgDropdownFontLineHeight: 1.3;
--evgDropdownFontCapitalization: none;
--evgDropdownBorderColor: var(--evgAltColor);
--evgDropdownBorderFocusColor: var(--evgAltColor);
--evgDropdownBorderRadius: 0;
--evgDropdownBackgroundColor: var(--evgLightColor);
--evgDropdownBackgroundFocusColor: var(--evgLightColor);

/** Accordion **/
--evgAccordionContentFontColor: var(--evgBodyTextColor);
--evgAccordionContentBackgroundColor: var(--evgGreyColor);
--evgAccordionFontTypography: h4;
--evgAccordionFontFamily: Lato;
--evgAccordionFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgAccordionFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgAccordionFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgAccordionFontColor: var(--evgAltColor);
--evgAccordionFontAltColor: var(--evgPrimaryColor);
--evgAccordionFontFocusColor: var(--evgAltColor);
--evgAccordionFontWeight: normal;
--evgAccordionFontStyle: normal;
--evgAccordionFontLineHeight: 1.5;
--evgAccordionFontCapitalization: none;
--evgAccordionSecondaryFontTypography: caption;
--evgAccordionSecondaryFontFamily: Inter;
--evgAccordionSecondaryFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgAccordionSecondaryFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgAccordionSecondaryFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgAccordionSecondaryFontColor: var(--evgAltColor);
--evgAccordionSecondaryFontAltColor: var(--evgPrimaryColor);
--evgAccordionSecondaryFontWeight: normal;
--evgAccordionSecondaryFontStyle: normal;
--evgAccordionSecondaryFontLineHeight: 1.3;
--evgAccordionSecondaryFontCapitalization: none;
--evgAccordionSecondaryFontActiveColor: primary;
--evgAccordionBorderColor: var(--evgGreyColor);
--evgAccordionBorderHoverColor: var(--evgGreyColor);
--evgAccordionBorderFocusColor: var(--evgGreyColor);
--evgAccordionBorderActiveColor: var(--evgGreyColor);
--evgAccordionBorderRadius: 0px;
--evgAccordionBackgroundColor: var(--evgBorderColor);
--evgAccordionBackgroundHoverColor: var(--evgBorderColor);
--evgAccordionBackgroundFocusColor: var(--evgBorderColor);
--evgAccordionBackgroundActiveColor: var(--evgBorderColor);
--evgAccordionPaddingItemPadding: 20px;

/** Tabs **/
--evgTabsTabGaps: 3px;
--evgTabsContainerPaddingLeftRight: 15px;
--evgTabsContainerPaddingTop: 10px;
--evgTabsFontTypography: body;
--evgTabsFontFamily: Lato;
--evgTabsFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgTabsFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgTabsFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgTabsFontColor: var(--evgLightColor);
--evgTabsFontAltColor: var(--evgPrimaryColor);
--evgTabsFontHoverColor: var(--evgPrimaryColor);
--evgTabsFontWeight: normal;
--evgTabsFontLineHeight: 1.3;
--evgTabsFontCapitalization: none;
--evgTabsBorderColor: var(--evgInheritColor);
--evgTabsBorderHoverColor: var(--evgInheritColor);
--evgTabsBorderActiveColor: var(--evgInheritColor);
--evgTabsBorderRadius: 0;
--evgTabsBackgroundColor: var(--evgPrimaryColor);
--evgTabsSecondaryBackgroundColor: var(--evgPrimaryColor);
--evgTabsSecondaryBackgroundHoverColor: var(--evgLightColor);
--evgTabsSecondaryBackgroundActiveColor: var(--evgLightColor);

/** List **/
--evgListBulletStyle: disc;
--evgListBulletColor: var(--evgPrimaryColor);
--evgListFontTypography: body;
--evgListFontFamily: Lato;
--evgListFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgListFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgListFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgListFontColor: var(--evgBodyTextColor);
--evgListFontWeight: normal;
--evgListFontStyle: normal;
--evgListFontLineHeight: 1;
--evgListFontCapitalization: none;
--evgListDecorationTextDecoration: none;
--evgListDecorationTextDecorationHover: inherit; /* Empty or N/A */
--evgListDecorationTextDecorationFocus: inherit; /* Empty or N/A */
--evgListDecorationTextDecorationColor: var(--evgInheritColor);

/** Table **/
--evgTableZebra: inherit;
--evgTableRowUnderline: 1px solid;
--evgTableFontTypography: body;
--evgTableFontFamily: Lato;
--evgTableFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgTableFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgTableFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgTableFontColor: var(--evgLightColor);
--evgTableFontWeight: normal;
--evgTableFontLineHeight: 1;
--evgTableFontCapitalization: none;
--evgTableSecondaryFontTypography: body;
--evgTableSecondaryFontFamily: Lato;
--evgTableSecondaryFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgTableSecondaryFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgTableSecondaryFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgTableSecondaryFontColor: var(--evgPrimaryColor);
--evgTableSecondaryFontAltColor: var(--evgBodyTextColor);
--evgTableSecondaryFontWeight: normal;
--evgTableSecondaryFontLineHeight: 1.5;
--evgTableSecondaryFontCapitalization: none;
--evgTableBorderColor: var(--evgBorderColor);
--evgTableBorderRadius: 0;
--evgTableBackgroundColor: var(--evgPrimaryColor);
--evgTableBackgroundAltColor: var(--evgBorderColor);
--evgTableSecondaryBackgroundColor: var(--evgLightColor);
--evgTableSecondaryBackgroundAltColor: var(--evgGreyColor);
--evgTableShowNavigationArrows: initial;

/** StockChart **/
--evgStockChartStockChartMainColor: var(--evgPrimaryColor);
--evgStockChartStockChartMarkerColor: var(--evgAltColor);
--evgStockChartStockChartDividerColor: var(--evgGreyColor);
--evgStockChartStockChartTimelineSelectorColor: var(--evgPrimaryColor);
--evgStockChartFontTypography: caption;
--evgStockChartFontFamily: Lato;
--evgStockChartFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgStockChartFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgStockChartFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgStockChartFontColor: var(--evgBodyTextColor);
--evgStockChartFontWeight: normal;
--evgStockChartFontLineHeight: 1.2;
--evgStockChartFontCapitalization: uppercase;
--evgStockChartBackgroundColor: var(--evgLightColor);

/** Pagination **/
--evgPaginationAlignment: left;
--evgPaginationFontTypography: caption;
--evgPaginationFontFamily: Lato;
--evgPaginationFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgPaginationFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgPaginationFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgPaginationFontColor: var(--evgPrimaryColor);
--evgPaginationFontAltColor: var(--evgLightColor);
--evgPaginationFontHoverColor: var(--evgLightColor);
--evgPaginationFontWeight: normal;
--evgPaginationFontLineHeight: 1.2;
--evgPaginationFontCapitalization: uppercase;
--evgPaginationBorderColor: var(--evgPrimaryColor);
--evgPaginationBorderHoverColor: var(--evgPrimaryColor);
--evgPaginationBorderActiveColor: var(--evgPrimaryColor);
--evgPaginationBorderRadius: 0;
--evgPaginationBackgroundColor: var(--evgLightColor);
--evgPaginationBackgroundHoverColor: var(--evgPrimaryColor);
--evgPaginationBackgroundActiveColor: var(--evgPrimaryColor);
--evgPaginationOutlineFocusColor: var(--evgPrimaryColor);

/** Input **/
--evgInputPlaceholderColor: var(--evgGreyColor);
--evgInputShowPlaceholder: visible;
--evgInputFontTypography: body;
--evgInputFontFamily: Lato;
--evgInputFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgInputFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgInputFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgInputFontColor: var(--evgBodyTextColor);
--evgInputFontWeight: normal;
--evgInputFontLineHeight: 1;
--evgInputFontCapitalization: none;
--evgInputSecondaryFontTypography: body;
--evgInputSecondaryFontFamily: Lato;
--evgInputSecondaryFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgInputSecondaryFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgInputSecondaryFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgInputSecondaryFontColor: var(--evgBodyTextColor);
--evgInputSecondaryFontWeight: normal;
--evgInputSecondaryFontLineHeight: 1;
--evgInputSecondaryFontCapitalization: capitalize;
--evgInputBorderColor: var(--evgBorderColor);
--evgInputBorderFocusColor: var(--evgPrimaryColor);
--evgInputBorderRadius: 0;
--evgInputBackgroundColor: var(--evgLightColor);

/** RadioCheckbox **/
--evgRadioCheckboxFillStyle: var(--evgBodyTextColor);
--evgRadioCheckboxFillColor: var(--evgBodyTextColor);
--evgRadioCheckboxFillActiveColor: var(--evgAltColor);
--evgRadioCheckboxSecondaryBorderColor: var(--evgLightColor);
--evgRadioCheckboxSecondaryBorderActiveColor: var(--evgAltColor);
--evgRadioCheckboxSecondaryFillStyle: var(--evgBodyTextColor);
--evgRadioCheckboxSecondaryFillColor: var(--evgBodyTextColor);
--evgRadioCheckboxSecondaryFillActiveColor: var(--evgAltColor);
--evgRadioCheckboxFontTypography: body;
--evgRadioCheckboxFontFamily: Arial;
--evgRadioCheckboxFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgRadioCheckboxFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgRadioCheckboxFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgRadioCheckboxFontColor: var(--evgLightColor);
--evgRadioCheckboxFontWeight: normal;
--evgRadioCheckboxFontLineHeight: 1.2;
--evgRadioCheckboxFontCapitalization: none;
--evgRadioCheckboxBorderColor: var(--evgLightColor);
--evgRadioCheckboxBorderActiveColor: var(--evgAltColor);
--evgRadioCheckboxBorderRadius: 0;

/** Calendar **/
--evgCalendarDayFontTypography: body;
--evgCalendarDayFontFamily: Inter;
--evgCalendarDayFontSizeL: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarDayFontSizeM: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarDayFontSizeS: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarDayFontColor: var(--evgBodyTextColor);
--evgCalendarDayFontWeight: normal;
--evgCalendarDayFontLineHeight: 1;
--evgCalendarDayFontCapitalization: capitalize;
--evgCalendarLegendFontTypography: caption;
--evgCalendarLegendFontFamily: Inter;
--evgCalendarLegendFontSizeL: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarLegendFontSizeM: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarLegendFontSizeS: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarLegendFontColor: var(--evgBodyTextColor);
--evgCalendarLegendFontWeight: normal;
--evgCalendarLegendFontLineHeight: 1;
--evgCalendarLegendFontCapitalization: capitalize;
--evgCalendarDotPrimaryColor: var(--evgPrimaryColor);
--evgCalendarDotSecondaryColor: var(--evgSuccessColor);
--evgCalendarFontTypography: caption;
--evgCalendarFontFamily: Inter;
--evgCalendarFontSizeL: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarFontSizeM: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarFontSizeS: calc(var(--evgRootFontSize) * 1.4);
--evgCalendarFontColor: var(--evgBodyTextColor);
--evgCalendarFontAltColor: var(--evgLightColor);
--evgCalendarFontHoverColor: var(--evgLightColor);
--evgCalendarFontFocusColor: var(--evgBodyTextColor);
--evgCalendarFontWeight: normal;
--evgCalendarFontLineHeight: 1.2;
--evgCalendarFontCapitalization: uppercase;
--evgCalendarFontDisabledColor: var(--evgGreyColor);
--evgCalendarSecondaryFontTypography: caption;
--evgCalendarSecondaryFontFamily: Inter;
--evgCalendarSecondaryFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgCalendarSecondaryFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgCalendarSecondaryFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgCalendarSecondaryFontColor: var(--evgLightColor);
--evgCalendarSecondaryFontWeight: 600;
--evgCalendarSecondaryFontLineHeight: 1.5;
--evgCalendarSecondaryFontCapitalization: capitalize;
--evgCalendarBorderColor: var(--evgBorderColor);
--evgCalendarBorderRadius: 0;
--evgCalendarBackgroundColor: var(--evgLightColor);
--evgCalendarBackgroundHoverColor: var(--evgAltColor);
--evgCalendarBackgroundActiveColor: var(--evgPrimaryColor);
--evgCalendarSecondaryBackgroundColor: var(--evgPrimaryColor);
--evgCalendarSecondaryBackgroundAltColor: var(--evgLightColor);

/** Card **/
--evgCardDropShadow: var(--dropShadowBottomRight);
--evgCardDropShadowHover: none;
--evgCardBorderColor: var(--evgLightColor);
--evgCardBorderHoverColor: var(--evgLightColor);
--evgCardBorderActiveColor: var(--evgLightColor);
--evgCardBorderRadius: 0px;
--evgCardBackgroundColor: var(--evgLightColor);
--evgCardBackgroundHoverColor: var(--evgLightColor);
--evgCardBackgroundActiveColor: var(--evgLightColor);
--evgCardPaddingTop: 20px;
--evgCardPaddingBottom: 20px;
--evgCardPaddingLeft: 20px;
--evgCardPaddingRight: 20px;
/*** END COMPONENT VARIABLES ***/

/*** START TEXT and HEADING VARIABLES ***/

/** Body **/
--evgBodyFontFamily: Lato;
--evgBodyFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgBodyFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgBodyFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgBodyFontColor: var(--evgBodyTextColor);
--evgBodyFontWeight: normal;
--evgBodyLineHeight: 1.5;
--evgBodyCapitalization: none;

/** Link **/
--evgLinkTypography: body;
--evgLinkFontFamily: Lato;
--evgLinkFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgLinkFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgLinkFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgLinkFontColor: var(--evgBodyTextColor);
--evgLinkFontWeight: normal;
--evgLinkLineHeight: 1.5;
--evgLinkCapitalization: none;

/** H1 **/
--evgH1FontFamily: Lato;
--evgH1FontSizeL: calc(var(--evgRootFontSize) * 6);
--evgH1FontSizeM: calc(var(--evgRootFontSize) * 4.5);
--evgH1FontSizeS: calc(var(--evgRootFontSize) * 3.6);
--evgH1FontColor: var(--evgBodyTextColor);
--evgH1FontWeight: normal;
--evgH1LineHeight: 1.5;
--evgH1Capitalization: none;

/** H2 **/
--evgH2FontFamily: Lato;
--evgH2FontSizeL: calc(var(--evgRootFontSize) * 3.6);
--evgH2FontSizeM: calc(var(--evgRootFontSize) * 2.7);
--evgH2FontSizeS: calc(var(--evgRootFontSize) * 2.7);
--evgH2FontColor: var(--evgBodyTextColor);
--evgH2FontWeight: normal;
--evgH2LineHeight: 1.5;
--evgH2Capitalization: none;

/** H3 **/
--evgH3FontFamily: Lato;
--evgH3FontSizeL: calc(var(--evgRootFontSize) * 2.4);
--evgH3FontSizeM: calc(var(--evgRootFontSize) * 2.4);
--evgH3FontSizeS: calc(var(--evgRootFontSize) * 2.4);
--evgH3FontColor: var(--evgBodyTextColor);
--evgH3FontWeight: normal;
--evgH3LineHeight: 1.5;
--evgH3Capitalization: none;

/** H4 **/
--evgH4FontFamily: Lato;
--evgH4FontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgH4FontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgH4FontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgH4FontColor: var(--evgBodyTextColor);
--evgH4FontWeight: normal;
--evgH4LineHeight: 1.5;
--evgH4Capitalization: none;

/** H5 **/
--evgH5FontFamily: Lato;
--evgH5FontSizeL: calc(var(--evgRootFontSize) * 1.2);
--evgH5FontSizeM: calc(var(--evgRootFontSize) * 1.2);
--evgH5FontSizeS: calc(var(--evgRootFontSize) * 1.2);
--evgH5FontColor: var(--evgBodyTextColor);
--evgH5FontWeight: normal;
--evgH5LineHeight: 1.5;
--evgH5Capitalization: none;

/** Caption **/
--evgCaptionFontFamily: Inter;
--evgCaptionFontSizeL: calc(var(--evgRootFontSize) * 1);
--evgCaptionFontSizeM: calc(var(--evgRootFontSize) * 1);
--evgCaptionFontSizeS: calc(var(--evgRootFontSize) * 1);
--evgCaptionFontColor: var(--evgBodyTextColor);
--evgCaptionFontWeight: normal;
--evgCaptionLineHeight: 1.2;
--evgCaptionCapitalization: uppercase;
/*** END TEXT and HEADING VARIABLES ***/

/*** START NAVIGATION VARIABLES ***/

/** Main **/
--evgNavigationsMainDisplay: var(--evgBodyTextColor);
--evgNavigationsMainSiteLogoUrl: url('https://investors.currencgroup.com/');
--evgNavigationsMainSiteLogoUrlLink: url('https://investors.currencgroup.com/');
--evgNavigationsMainSiteLogoAltText: Logo Alt Text;
--evgNavigationsMainSiteLogoOpenLinkInNewTab: var(--evgBodyTextColor);
--evgNavigationsMainCurrentPageIndicator: var(--evgBodyTextColor);
--evgNavigationsMainLinkAlignment: right;
--evgNavigationsMainDropdownBackgroundHoverColor: var(--evgInheritColor);
--evgNavigationsMainDropdownBackgroundActiveColor: var(--evgInheritColor);
--evgNavigationsMainDropdownLinkTypography: body;
--evgNavigationsMainDropdownLinkFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsMainDropdownLinkColor: var(--evgBodyTextColor);
--evgNavigationsMainDropdownLinkActiveColor: var(--evgInheritColor);
--evgNavigationsMainDropdownLinkTextDecorationActiveColor: var(--evgInheritColor);
--evgNavigationsMainDropdownLinkFontFamily: Lato;
--evgNavigationsMainDropdownLinkFontCapitalization: none;
--evgNavigationsMainDropdownLinkFontWeight: normal;
--evgNavigationsMainDropdownLinkFontStyle: normal;
--evgNavigationsMainSearchFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsMainSearchFontColor: var(--evgBodyTextColor);
--evgNavigationsMainMobileMenuSeparatorColor: var(--evgBorderColor);
--evgNavigationsMainMobileSearchFontColor: var(--evgBodyTextColor);
--evgNavigationsMainMobileLinkTypography: body;
--evgNavigationsMainMobileLinkFontFamily: Lato;
--evgNavigationsMainMobileLinkFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsMainMobileLinkFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsMainMobileLinkFontWeight: normal;
--evgNavigationsMainMobileLinkFontStyle: normal;
--evgNavigationsMainMobileLinkLineHeight: 1.5;
--evgNavigationsMainMobileLinkCapitalization: none;
--evgNavigationsMainMobileLinkTextDecoration: none;
--evgNavigationsMainMobileLinkTextDecorationHover: none;
--evgNavigationsMainMobileLinkTextDecorationFocus: none;
--evgNavigationsMainMobileLinkColor: var(--evgBodyTextColor);
--evgNavigationsMainMobileLinkTextDecorationActive: none;
--evgNavigationsMainMobileLinkFontWeightActive: normal;
--evgNavigationsMainLinkTypography: caption;
--evgNavigationsMainLinkFontFamily: Inter;
--evgNavigationsMainLinkFontSize: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsMainLinkFontWeight: normal;
--evgNavigationsMainLinkFontStyle: normal;
--evgNavigationsMainLinkLineHeight: 1.5;
--evgNavigationsMainLinkCapitalization: none;
--evgNavigationsMainLinkTextDecoration: none;
--evgNavigationsMainLinkTextDecorationHover: none;
--evgNavigationsMainLinkTextDecorationFocus: none;
--evgNavigationsMainLinkPrescrollColor: var(--evgBodyTextColor);
--evgNavigationsMainLinkScrollColor: var(--evgBodyTextColor);

/** Secondary **/
--evgNavigationsSecondaryLinkTypography: caption;
--evgNavigationsSecondaryLinkFontFamily: Inter;
--evgNavigationsSecondaryLinkFontSize: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsSecondaryLinkFontWeight: normal;
--evgNavigationsSecondaryLinkFontStyle: normal;
--evgNavigationsSecondaryLinkLineHeight: 1.5;
--evgNavigationsSecondaryLinkCapitalization: none;
--evgNavigationsSecondaryLinkTextDecoration: none;
--evgNavigationsSecondaryLinkTextDecorationHover: none;
--evgNavigationsSecondaryLinkTextDecorationFocus: none;
--evgNavigationsSecondaryLinkPrescrollColor: var(--evgBodyTextColor);
--evgNavigationsSecondaryLinkScrollColor: var(--evgBodyTextColor);

/** Footer **/
--evgFooterPrimaryColor: var(--evgPrimaryColor);
--evgFooterSecondaryColor: var(--evgPrimaryColor);
--evgFooterImagePosition: top left;
--evgFooterImageSizing: cover;

/** Corporate **/
--evgNavigationsCorporateBackgroundPrescrollColor: var(--evgPrimaryColor);
--evgNavigationsCorporateBackgroundScrollColor: var(--evgAltColor);
--evgNavigationsCorporateLinkTypography: caption;
--evgNavigationsCorporateLinkFontFamily: Inter;
--evgNavigationsCorporateLinkFontSize: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsCorporateLinkFontWeight: normal;
--evgNavigationsCorporateLinkFontStyle: normal;
--evgNavigationsCorporateLinkLineHeight: 1;
--evgNavigationsCorporateLinkCapitalization: none;
--evgNavigationsCorporateLinkPrescrollColor: var(--evgBodyTextColor);
--evgNavigationsCorporateLinkScrollColor: var(--evgBodyTextColor);
--evgNavigationsCorporateCurrentPageIndicator: var(--evgBodyTextColor);
--evgNavigationsCorporateLinkAlignment: right;
--evgNavigationsCorporateMobileBackgroundPrescrollColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileBackgroundScrollColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileHamburgerColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileMenuSeparatorColor: var(--evgBorderColor);
--evgNavigationsCorporateMobileNavigationBackgroundColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileNavigationColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileSearchBackgroundColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileSearchFontColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileLinkTypography: caption;
--evgNavigationsCorporateMobileLinkFontFamily: Inter;
--evgNavigationsCorporateMobileLinkFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsCorporateMobileLinkFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgNavigationsCorporateMobileLinkFontWeight: normal;
--evgNavigationsCorporateMobileLinkFontStyle: normal;
--evgNavigationsCorporateMobileLinkLineHeight: 1.2;
--evgNavigationsCorporateMobileLinkCapitalization: none;
--evgNavigationsCorporateMobileLinkTextDecoration: none;
--evgNavigationsCorporateMobileLinkTextDecorationHover: none;
--evgNavigationsCorporateMobileLinkTextDecorationFocus: none;
--evgNavigationsCorporateMobileLinkColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileLinkHoverColor: var(--evgDarkColor);
--evgNavigationsCorporateMobileLinkFocusColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileLinkTextDecorationColor: var(--evgPrimaryColor);
--evgNavigationsCorporateMobileLinkTextDecorationHoverColor: var(--evgDarkColor);
--evgNavigationsCorporateMobileLinkTextDecorationFocusColor: var(--evgPrimaryColor);

/*** END NAVIGATION VARIABLES ***/

/*** START COOKIE MANAGEMENT VARIABLES ***/
--evgCookiesBannerBackgroundColor: var(--evgLightColor);
--evgCookiesBannerAcceptButtonFontTypography: body;
--evgCookiesBannerAcceptButtonFontFamily: Lato;
--evgCookiesBannerAcceptButtonFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerAcceptButtonFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerAcceptButtonFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerAcceptButtonFontColor: var(--evgLightColor);
--evgCookiesBannerAcceptButtonFontHoverColor: var(--evgLightColor);
--evgCookiesBannerAcceptButtonFontFocusColor: var(--evgLightColor);
--evgCookiesBannerAcceptButtonFontWeight: normal;
--evgCookiesBannerAcceptButtonFontStyle: normal;
--evgCookiesBannerAcceptButtonFontLineHeight: 1.3;
--evgCookiesBannerAcceptButtonFontCapitalization: none;
--evgCookiesBannerAcceptButtonBorderColor: var(--evgPrimaryColor);
--evgCookiesBannerAcceptButtonBorderHoverColor: var(--evgAltColor);
--evgCookiesBannerAcceptButtonBorderFocusColor: var(--evgAltColor);
--evgCookiesBannerAcceptButtonBorderRadius: 0;
--evgCookiesBannerAcceptButtonBackgroundColor: var(--evgPrimaryColor);
--evgCookiesBannerAcceptButtonBackgroundHoverColor: var(--evgAltColor);
--evgCookiesBannerAcceptButtonBackgroundFocusColor: var(--evgAltColor);
--evgCookiesBannerAcceptButtonPaddingItemPadding: initial;
--evgCookiesBannerAcceptButtonPaddingVerticalPadding: 20px;
--evgCookiesBannerAcceptButtonPaddingTop: initial;
--evgCookiesBannerAcceptButtonPaddingBottom: initial;
--evgCookiesBannerAcceptButtonPaddingLeft: initial;
--evgCookiesBannerAcceptButtonPaddingRight: initial;
--evgCookiesBannerAcceptButtonDecorationTextDecoration: none;
--evgCookiesBannerAcceptButtonDecorationTextDecorationHover: none;
--evgCookiesBannerAcceptButtonDecorationTextDecorationFocus: none;
--evgCookiesBannerAcceptButtonDecorationTextDecorationColor: var(--evgLightColor);
--evgCookiesBannerAcceptButtonDecorationTextDecorationHoverColor: var(--evgLightColor);
--evgCookiesBannerAcceptButtonDecorationTextDecorationFocusColor: var(--evgLightColor);
--evgCookiesBannerRejectButtonFontTypography: body;
--evgCookiesBannerRejectButtonFontFamily: Lato;
--evgCookiesBannerRejectButtonFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerRejectButtonFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerRejectButtonFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerRejectButtonFontColor: var(--evgPrimaryColor);
--evgCookiesBannerRejectButtonFontHoverColor: var(--evgLightColor);
--evgCookiesBannerRejectButtonFontFocusColor: var(--evgLightColor);
--evgCookiesBannerRejectButtonFontWeight: normal;
--evgCookiesBannerRejectButtonFontStyle: normal;
--evgCookiesBannerRejectButtonFontLineHeight: 1.3;
--evgCookiesBannerRejectButtonFontCapitalization: none;
--evgCookiesBannerRejectButtonBorderColor: var(--evgLightColor);
--evgCookiesBannerRejectButtonBorderHoverColor: var(--evgPrimaryColor);
--evgCookiesBannerRejectButtonBorderFocusColor: var(--evgPrimaryColor);
--evgCookiesBannerRejectButtonBorderRadius: 0;
--evgCookiesBannerRejectButtonBackgroundColor: var(--evgLightColor);
--evgCookiesBannerRejectButtonBackgroundHoverColor: var(--evgPrimaryColor);
--evgCookiesBannerRejectButtonBackgroundFocusColor: var(--evgPrimaryColor);
--evgCookiesBannerRejectButtonPaddingItemPadding: initial;
--evgCookiesBannerRejectButtonPaddingVerticalPadding: 20px;
--evgCookiesBannerRejectButtonPaddingTop: initial;
--evgCookiesBannerRejectButtonPaddingBottom: initial;
--evgCookiesBannerRejectButtonPaddingLeft: initial;
--evgCookiesBannerRejectButtonPaddingRight: initial;
--evgCookiesBannerRejectButtonDecorationTextDecoration: none;
--evgCookiesBannerRejectButtonDecorationTextDecorationHover: none;
--evgCookiesBannerRejectButtonDecorationTextDecorationFocus: none;
--evgCookiesBannerRejectButtonDecorationTextDecorationColor: var(--evgLightColor);
--evgCookiesBannerRejectButtonDecorationTextDecorationHoverColor: var(--evgLightColor);
--evgCookiesBannerRejectButtonDecorationTextDecorationFocusColor: var(--evgLightColor);
--evgCookiesBannerPreferenceButtonFontTypography: body;
--evgCookiesBannerPreferenceButtonFontFamily: Lato;
--evgCookiesBannerPreferenceButtonFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerPreferenceButtonFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerPreferenceButtonFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerPreferenceButtonFontColor: var(--evgPrimaryColor);
--evgCookiesBannerPreferenceButtonFontHoverColor: var(--evgLightColor);
--evgCookiesBannerPreferenceButtonFontFocusColor: var(--evgLightColor);
--evgCookiesBannerPreferenceButtonFontWeight: normal;
--evgCookiesBannerPreferenceButtonFontStyle: normal;
--evgCookiesBannerPreferenceButtonFontLineHeight: 1.3;
--evgCookiesBannerPreferenceButtonFontCapitalization: none;
--evgCookiesBannerPreferenceButtonBorderColor: var(--evgLightColor);
--evgCookiesBannerPreferenceButtonBorderHoverColor: var(--evgPrimaryColor);
--evgCookiesBannerPreferenceButtonBorderFocusColor: var(--evgPrimaryColor);
--evgCookiesBannerPreferenceButtonBorderRadius: 0;
--evgCookiesBannerPreferenceButtonBackgroundColor: var(--evgLightColor);
--evgCookiesBannerPreferenceButtonBackgroundHoverColor: var(--evgPrimaryColor);
--evgCookiesBannerPreferenceButtonBackgroundFocusColor: var(--evgPrimaryColor);
--evgCookiesBannerPreferenceButtonPaddingItemPadding: initial;
--evgCookiesBannerPreferenceButtonPaddingVerticalPadding: 20px;
--evgCookiesBannerPreferenceButtonPaddingTop: initial;
--evgCookiesBannerPreferenceButtonPaddingBottom: initial;
--evgCookiesBannerPreferenceButtonPaddingLeft: initial;
--evgCookiesBannerPreferenceButtonPaddingRight: initial;
--evgCookiesBannerPreferenceButtonDecorationTextDecoration: none;
--evgCookiesBannerPreferenceButtonDecorationTextDecorationHover: none;
--evgCookiesBannerPreferenceButtonDecorationTextDecorationFocus: none;
--evgCookiesBannerPreferenceButtonDecorationTextDecorationColor: var(--evgLightColor);
--evgCookiesBannerPreferenceButtonDecorationTextDecorationHoverColor: var(--evgLightColor);
--evgCookiesBannerPreferenceButtonDecorationTextDecorationFocusColor: var(--evgLightColor);
--evgCookiesBannerCloseButtonIconColor: var(--evgPrimaryColor);
--evgCookiesBannerHeadingFontFamily: Lato;
--evgCookiesBannerHeadingFontSizeL: calc(var(--evgRootFontSize) * 2.4);
--evgCookiesBannerHeadingFontSizeM: calc(var(--evgRootFontSize) * 2.4);
--evgCookiesBannerHeadingFontSizeS: calc(var(--evgRootFontSize) * 2.4);
--evgCookiesBannerHeadingFontColor: var(--evgBodyTextColor);
--evgCookiesBannerHeadingFontWeight: normal;
--evgCookiesBannerHeadingFontLineHeight: 1.5;
--evgCookiesBannerHeadingFontCapitalization: none;
--evgCookiesBannerDescriptionFontFamily: Lato;
--evgCookiesBannerDescriptionFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerDescriptionFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerDescriptionFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesBannerDescriptionFontColor: var(--evgBodyTextColor);
--evgCookiesBannerDescriptionFontWeight: normal;
--evgCookiesBannerDescriptionFontLineHeight: 1.5;
--evgCookiesBannerDescriptionFontCapitalization: none;
--evgCookiesLinkTypography: caption;
--evgCookiesLinkFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesLinkFontSizeM: calc(var(--evgRootFontSize) * 1.4);
--evgCookiesLinkFontSizeS: calc(var(--evgRootFontSize) * 1.4);
--evgCookiesLinkColor: var(--evgPrimaryColor);
--evgCookiesLinkHoverColor: var(--evgAltColor);
--evgCookiesLinkFocusColor: var(--evgBodyTextColor);
--evgCookiesLinkLineHeight: 2.0;
--evgCookiesLinkTextDecoration: none;
--evgCookiesLinkTextDecorationHover: underline solid;
--evgCookiesLinkTextDecorationFocus: none;
--evgCookiesLinkTextDecorationColor: var(--evgAltColor);
--evgCookiesLinkTextDecorationHoverColor: var(--evgAltColor);
--evgCookiesLinkTextDecorationFocusColor: var(--evgAltColor);
--evgCookiesPaneBackgroundColor: var(--evgLightColor);
--evgCookiesPaneCloseButtonFontTypography: body;
--evgCookiesPaneCloseButtonFontFamily: Lato;
--evgCookiesPaneCloseButtonFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesPaneCloseButtonFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesPaneCloseButtonFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesPaneCloseButtonFontColor: var(--evgPrimaryColor);
--evgCookiesPaneCloseButtonFontHoverColor: var(--evgLightColor);
--evgCookiesPaneCloseButtonFontFocusColor: var(--evgLightColor);
--evgCookiesPaneCloseButtonFontWeight: normal;
--evgCookiesPaneCloseButtonFontStyle: normal;
--evgCookiesPaneCloseButtonFontLineHeight: 1.3;
--evgCookiesPaneCloseButtonFontCapitalization: none;
--evgCookiesPaneCloseButtonBorderColor: var(--evgLightColor);
--evgCookiesPaneCloseButtonBorderHoverColor: var(--evgPrimaryColor);
--evgCookiesPaneCloseButtonBorderFocusColor: var(--evgPrimaryColor);
--evgCookiesPaneCloseButtonBorderRadius: 0;
--evgCookiesPaneCloseButtonBackgroundColor: var(--evgLightColor);
--evgCookiesPaneCloseButtonBackgroundHoverColor: var(--evgPrimaryColor);
--evgCookiesPaneCloseButtonBackgroundFocusColor: var(--evgPrimaryColor);
--evgCookiesPaneCloseButtonPaddingItemPadding: initial;
--evgCookiesPaneCloseButtonPaddingVerticalPadding: 20px;
--evgCookiesPaneCloseButtonPaddingTop: initial;
--evgCookiesPaneCloseButtonPaddingBottom: initial;
--evgCookiesPaneCloseButtonPaddingLeft: initial;
--evgCookiesPaneCloseButtonPaddingRight: initial;
--evgCookiesPaneCloseButtonDecorationTextDecoration: none;
--evgCookiesPaneCloseButtonDecorationTextDecorationHover: none;
--evgCookiesPaneCloseButtonDecorationTextDecorationFocus: none;
--evgCookiesPaneCloseButtonDecorationTextDecorationColor: var(--evgLightColor);
--evgCookiesPaneCloseButtonDecorationTextDecorationHoverColor: var(--evgLightColor);
--evgCookiesPaneCloseButtonDecorationTextDecorationFocusColor: var(--evgLightColor);
--evgCookiesPaneSwitchOnBackgroundColor: var(--evgPrimaryColor);
--evgCookiesPaneSwitchOnTextColor: var(--evgBodyTextColor);
--evgCookiesPaneSwitchOffBackgroundColor: var(--evgGreyDarkColor);
--evgCookiesPaneSwitchOffTextColor: var(--evgPrimaryColor);
--evgCookiesPaneLineSeparatorColor: var(--evgGreyColor);
--evgCookiesPaneAlwaysActiveColor: var(--evgSuccessColor);
--evgCookiesPaneAllAcceptedColor: var(--evgSuccessColor);
--evgCookiesPaneAllRejectedColor: var(--evgErrorColor);
--evgCookiesPaneSomeAcceptedColor: var(--evgBodyTextColor);
--evgCookiesPaneWarningBackgroundColor: var(--evgLightColor);
--evgCookiesPaneWarningBorderColor: var(--evgBrand5Color);
--evgCookiesPaneWarningIconColor: var(--evgBrand5Color);
--evgCookiesPaneHeadingFontFamily: Lato;
--evgCookiesPaneHeadingFontSizeL: calc(var(--evgRootFontSize) * 2.4);
--evgCookiesPaneHeadingFontSizeM: calc(var(--evgRootFontSize) * 2.4);
--evgCookiesPaneHeadingFontSizeS: calc(var(--evgRootFontSize) * 2.4);
--evgCookiesPaneHeadingFontColor: var(--evgBodyTextColor);
--evgCookiesPaneHeadingFontWeight: normal;
--evgCookiesPaneHeadingFontLineHeight: 1.5;
--evgCookiesPaneHeadingFontCapitalization: none;
--evgCookiesPaneSubheadingFontFamily: Lato;
--evgCookiesPaneSubheadingFontSizeL: calc(var(--evgRootFontSize) * 1.2);
--evgCookiesPaneSubheadingFontSizeM: calc(var(--evgRootFontSize) * 1.2);
--evgCookiesPaneSubheadingFontSizeS: calc(var(--evgRootFontSize) * 1.2);
--evgCookiesPaneSubheadingFontColor: var(--evgBodyTextColor);
--evgCookiesPaneSubheadingFontWeight: normal;
--evgCookiesPaneSubheadingFontLineHeight: 1.5;
--evgCookiesPaneSubheadingFontCapitalization: none;
--evgCookiesPaneBodyFontFamily: Lato;
--evgCookiesPaneBodyFontSizeL: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesPaneBodyFontSizeM: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesPaneBodyFontSizeS: calc(var(--evgRootFontSize) * 1.6);
--evgCookiesPaneBodyFontColor: var(--evgBodyTextColor);
--evgCookiesPaneBodyFontWeight: normal;
--evgCookiesPaneBodyFontLineHeight: 1.5;
--evgCookiesPaneBodyFontCapitalization: none;
--evgCookiesFloatingButtonTypography: caption;
--evgCookiesFloatingButtonFontFamily: Inter;
--evgCookiesFloatingButtonFontSizeL: calc(var(--evgRootFontSize) * 1.4);
--evgCookiesFloatingButtonFontSizeM: calc(var(--evgRootFontSize) * 1.4);
--evgCookiesFloatingButtonFontSizeS: calc(var(--evgRootFontSize) * 1.4);
--evgCookiesFloatingButtonFontWeight: normal;
--evgCookiesFloatingButtonFontStyle: normal;
--evgCookiesFloatingButtonLineHeight: 1.6;
--evgCookiesFloatingButtonCapitalization: none;
--evgCookiesFloatingButtonTextDecoration: none;
--evgCookiesFloatingButtonTextDecorationHover: none;
--evgCookiesFloatingButtonTextDecorationFocus: none;
--evgCookiesFloatingButtonTextDecorationColor: var(--evgPrimaryColor);
--evgCookiesFloatingButtonTextDecorationHoverColor: var(--evgPrimaryColor);
--evgCookiesFloatingButtonTextDecorationFocusColor: var(--evgPrimaryColor);
--evgCookiesFloatingButtonFontColor: var(--evgLightColor);
--evgCookiesFloatingButtonFontHoverColor: var(--evgLightColor);
--evgCookiesFloatingButtonFontFocusColor: var(--evgLightColor);
--evgCookiesFloatingButtonBorderRadius: 4px;
--evgCookiesFloatingButtonBorderColor: var(--evgPrimaryColor);
--evgCookiesFloatingButtonBorderHoverColor: var(--evgAltColor);
--evgCookiesFloatingButtonBorderFocusColor: var(--evgAltColor);
--evgCookiesFloatingButtonBackgroundColor: var(--evgPrimaryColor);
--evgCookiesFloatingButtonBackgroundHoverColor: var(--evgAltColor);
--evgCookiesFloatingButtonBackgroundFocusColor: var(--evgAltColor);
--evgCookiesFloatingButtonVerticalPadding: 20px;
/*** END COOKIE MANAGEMENT VARIABLES ***/

/*** START CUSTOM GRID VARIABLES ***/
--evergreen-grid-col: 1;
--evergreen-grid-col-tablet: 1;
--evergreen-grid-col-mobile: 1;
--evergreen-grid-col-p: 0;
--evergreen-grid-col-p-tablet: 0;
--evergreen-grid-col-p-mobile: 0;
--evergreen-grid-col-bg: transparent;
}
/*** END CUSTOM GRID VARIABLES ***/

/***** EVERGREEN STYLES *****/
/* Navigation */
.evergreen-layout {
    --navigationsMainBackgroundColor: var(--evgNavigationsMainBackgroundPrescrollColor);
    --navigationsMainMobileBackgroundColor: var(--evgNavigationsMainMobileBackgroundPrescrollColor);
    --navigationsMainLinkColor: var(--evgNavigationsMainLinkPrescrollColor);
    --navigationsMainLinkHoverColor: var(--evgNavigationsMainLinkPrescrollHoverColor);
    --navigationsMainLinkFocusColor: var(--evgNavigationsMainLinkPrescrollFocusColor);
    --navigationsMainTextDecorationColor: var(--evgNavigationsMainLinkPrescrollTextDecorationColor);
    --navigationsMainTextDecorationHoverColor: var(--evgNavigationsMainLinkPrescrollTextDecorationHoverColor);
    --navigationsMainTextDecorationFocusColor: var(--evgNavigationsMainLinkPrescrollTextDecorationFocusColor);

    --navigationsSecondaryBackgroundColor: var(--evgNavigationsSecondaryBackgroundPrescrollColor);
    --navigationsSecondaryTabBackgroundColor: var(--evgNavigationsSecondaryTabBackgroundPrescrollColor);
    --navigationsSecondaryTabBackgroundHoverColor: var(--evgNavigationsSecondaryTabBackgroundPrescrollHoverColor);
    --navigationsSecondaryTabBackgroundFocusColor: var(--evgNavigationsSecondaryTabBackgroundPrescrollActiveColor);
    --navigationsSecondaryLinkColor: var(--evgNavigationsSecondaryLinkPrescrollColor);
    --navigationsSecondaryLinkHoverColor: var(--evgNavigationsSecondaryLinkPrescrollHoverColor);
    --navigationsSecondaryLinkFocusColor: var(--evgNavigationsSecondaryLinkPrescrollFocusColor);
    --navigationsSecondaryTextDecorationColor: var(--evgNavigationsSecondaryLinkPrescrollTextDecorationColor);
    --navigationsSecondaryTextDecorationHoverColor: var(--evgNavigationsSecondaryLinkPrescrollTextDecorationHoverColor);
    --navigationsSecondaryTextDecorationFocusColor: var(--evgNavigationsSecondaryLinkPrescrollTextDecorationFocusColor);

    --navigationsCorporateBackgroundColor: var(--evgNavigationsCorporateBackgroundPrescrollColor);
    --navigationsCorporateMobileBackgroundColor: var(--evgNavigationsCorporateMobileBackgroundPrescrollColor);
}

.evergreen-layout.evergreen-layout--scroll .evergreen-primary-navigation-menu-container {
    --navigationsMainMobileBackgroundColor: var(--evgNavigationsMainMobileBackgroundScrollColor);
}

.evergreen-layout--scroll .evergreen-primary-navigation-menu--primary {
    --navigationsMainBackgroundColor: var(--evgNavigationsMainBackgroundScrollColor);
    --navigationsMainMobileBackgroundColor: var(--evgNavigationsMainMobileBackgroundScrollColor);
    --navigationsMainLinkColor: var(--evgNavigationsMainLinkScrollColor);
    --navigationsMainLinkHoverColor: var(--evgNavigationsMainLinkScrollHoverColor);
    --navigationsMainLinkFocusColor: var(--evgNavigationsMainLinkScrollFocusColor);
    --navigationsMainTextDecorationColor: var(--evgNavigationsMainLinkScrollTextDecorationColor);
    --navigationsMainTextDecorationHoverColor: var(--evgNavigationsMainLinkScrollTextDecorationHoverColor);
    --navigationsMainTextDecorationFocusColor: var(--evgNavigationsMainLinkScrollTextDecorationFocusColor);
}

.evergreen-layout--scroll .evergreen-section--sticky {
    --navigationsSecondaryBackgroundColor: var(--evgNavigationsSecondaryBackgroundScrollColor);
    --navigationsSecondaryTabBackgroundColor: var(--evgNavigationsSecondaryTabBackgroundScrolllColor);
    --navigationsSecondaryTabBackgroundHoverColor: var(--evgNavigationsSecondaryTabBackgroundScrollHoverColor);
    --navigationsSecondaryTabBackgroundFocusColor: var(--evgNavigationsSecondaryTabBackgroundScrollActiveColor);
    --navigationsSecondaryLinkColor: var(--evgNavigationsSecondaryLinkScrollColor);
    --navigationsSecondaryLinkHoverColor: var(--evgNavigationsSecondaryLinkScrollHoverColor);
    --navigationsSecondaryLinkFocusColor: var(--evgNavigationsSecondaryLinkScrollFocusColor);
    --navigationsSecondaryTextDecorationColor: var(--evgNavigationsSecondaryLinkScrollTextDecorationColor);
    --navigationsSecondaryTextDecorationHoverColor: var(--evgNavigationsSecondaryLinkScrollTextDecorationHoverColor);
    --navigationsSecondaryTextDecorationFocusColor: var(--evgNavigationsSecondaryLinkScrollTextDecorationFocusColor);
}

/* Navigation Section */
.evergreen-layout .evergreen-section.evergreen-section--navigation {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
}

.evergreen-layout .evergreen-section.evergreen-section--navigation .evergreen-primary-navigation-menu--primary {
    background: var(--navigationsMainBackgroundColor);
}

.evergreen-layout .evergreen-section.evergreen-section--navigation .evergreen-primary-navigation-menu--primary .evergreen-primary-navigation-desktop-container {
    transition: all 0.5s ease-out;
    padding: 20px 20px;

}

.evergreen-layout .evergreen-section.evergreen-section--navigation .evergreen-primary-navigation-menu--corporate {
    transition: all 0.5s ease-out;
    background: var(--navigationsCorporateBackgroundColor);
    padding: 16px 20px;
}

.evergreen-pane.evergreen-pane--navigation {
    position: relative;

    display: flex;
    gap: 56px;
}

.evergreen-layout.evergreen-layout--scroll .evergreen-section.evergreen-section--navigation .evergreen-primary-navigation-menu--primary .evergreen-primary-navigation-desktop-container {
    --navigationBackgroundColor: var(--evgNavigationsMainBackgroundScrollColor);
    padding: 12px 20px;
}

.evergreen-layout.evergreen-layout--scroll .evergreen-section.evergreen-section--navigation .evergreen-primary-navigation-menu--corporate {
    --navigationsCorporateBackgroundColor: var(--evgNavigationsCorporateBackgroundScrollColor);
    padding: 8px 20px;
}

.evergreen-pane.evergreen-pane--navigation .NavigationPaneDiv {
    flex-grow: 1;
    min-width: 32px;
}

.evergreen-container--outer.evergreen-primary-navigation {
    padding-left: 0;
    padding-right: 0;
    margin-left: 0;
    margin-right: 0;
    max-width: none;
}

/* MAIN NAVIGATION LINK STYLING -- DESKTOP */

.evergreen-primary-navigation-container {
    display: flex;
}

.evergreen-primary-navigation {
    flex: 1;
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > a.evergreen-navigation-link,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > button.evergreen-navigation-button {
    font-family: var(--evgNavigationsMainLinkFontFamily);
    font-size: var(--evgNavigationsMainLinkFontSize);
    font-weight: var(--evgNavigationsMainLinkFontWeight);
    line-height: var(--evgNavigationsMainLinkLineHeight);
    font-style: var(--evgNavigationsMainLinkFontStyle);
    text-transform: var(--evgNavigationsMainLinkCapitalization);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > a.evergreen-navigation-link,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > button.evergreen-navigation-button .evergreen-navigation-button-text {
    color: var(--navigationsMainLinkColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul.evergreen-navigation-list--innerMenu li > a.evergreen-navigation-link {
    text-decoration: var(--evgNavigationsMainLinkTextDecoration);
    text-decoration-color: var(--navigationsMainTextDecorationColor);
    text-decoration-thickness: 1px;
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > a.evergreen-navigation-link:hover,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > button.evergreen-navigation-button:hover .evergreen-navigation-button-text {
    color: var(--navigationsMainLinkHoverColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul.evergreen-navigation-list--innerMenu li > a.evergreen-navigation-link:hover {
    text-decoration: var(--evgNavigationsMainLinkTextDecorationHover);
    text-decoration-color: var(--navigationsMainTextDecorationHoverColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > a.evergreen-navigation-link:focus,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > a.evergreen-navigation-link:focus-visible,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > button.evergreen-navigation-button:focus .evergreen-navigation-button-text,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > button.evergreen-navigation-button:focus-visible .evergreen-navigation-button-text {
    color: var(--navigationsMainLinkFocusColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul.evergreen-navigation-list--innerMenu li > a.evergreen-navigation-link:focus,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul.evergreen-navigation-list--innerMenu li > a.evergreen-navigation-link:focus-visible {
    text-decoration: var(--evgNavigationsMainLinkTextDecorationFocus);
    text-decoration-color: var(--navigationsMainTextDecorationFocusColor);
}



.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container > ul > li.expanded,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container > ul > li.selected {
    background-image: linear-gradient(to right, var(--navigationsMainTextDecorationColor) 33%, rgba(255, 255, 255, 0) 0%);
    background-position: bottom;
    background-size: 7px 2px;
    background-repeat: repeat-x;
    background-position-x: -7px;
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li.selected,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li.expanded {
    border-bottom: var(--evgModuleItemUnderline);
    border-bottom-style: var(--evgModuleItemUnderlineStyle);
    border-bottom-color: var(--evgModuleItemUnderlineColor);
}

/* Navigation Dropdowns */
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul li > button.evergreen-navigation-button .evergreen-navigation-button-icon {
    color: var(--evgNavigationsMainDropdownArrowColor);
    margin-left: 4px;
    font-size: 8px;
    vertical-align: middle;
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] {
    background: var(--evgNavigationsMainDropdownBackgroundColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul[class*='list--innerMenu'] li > a.evergreen-navigation-link,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul[class*='list--innerMenu'] li > button.evergreen-navigation-button .evergreen-navigation-button-text {
    color: var(--evgNavigationsMainDropdownLinkColor);
    text-decoration-color: var(--evgNavigationsMainDropdownLinkTextDecorationColor);
    font-size: var(--evgNavigationsMainDropdownLinkFontSizeL);
    text-transform: var(--evgNavigationsMainDropdownLinkFontCapitalization);
    font-family: var(--evgNavigationsMainDropdownLinkFontFamily);
    font-weight: var(--evgNavigationsMainDropdownLinkFontWeight);
    font-style: var(--evgNavigationsMainDropdownLinkFontStyle);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul[class*='list--innerMenu'] li:hover > a.evergreen-navigation-link,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul[class*='list--innerMenu'] li > button.evergreen-navigation-button:hover .evergreen-navigation-button-text {
    color: var(--evgNavigationsMainDropdownLinkHoverColor);
    text-decoration-color: var(--evgNavigationsMainDropdownLinkTextDecorationHoverColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul[class*='list--innerMenu'] li:focus > a.evergreen-navigation-link,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul[class*='list--innerMenu'] li:focus-visible > a.evergreen-navigation-link,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul[class*='list--innerMenu'] li > button.evergreen-navigation-button:focus .evergreen-navigation-button-text,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container ul[class*='list--innerMenu'] li > button.evergreen-navigation-button:focus-visible .evergreen-navigation-button-text {
    color: var(--evgNavigationsMainDropdownLinkFocusColor);
    text-decoration-color: var(--evgNavigationsMainDropdownLinkTextDecorationFocusColor);
}

/* Navigation Search */
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container .evergreen-navigation-search--btn {
    color: var(--evgNavigationsMainSearchFontColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container .evergreen-navigation-search input {
    background: var(--evgNavigationsMainSearchBackgroundColor);
    color: var(--evgNavigationsMainSearchFontColor);
    font-size: var(--evgNavigationsMainSearchFontSizeL);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container .evergreen-navigation-search input::placeholder {
    color: var(--evgNavigationsMainSearchFontColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container .evergreen-navigation-search .q4-icon_search,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container .evergreen-navigation-search .tooltip {
    color: var(--evgNavigationsMainDropdownArrowColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li > button {
    width: 100%;
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li:hover,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li:hover > button.evergreen-navigation-button {
    background: var(--evgNavigationsMainDropdownBackgroundHoverColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li:active,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li > button.evergreen-navigation-button:active {
    background: var(--evgNavigationsMainDropdownBackgroundActiveColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li:focus,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li > button.evergreen-navigation-button:active {
    background: var(--evgNavigationsMainDropdownBackgroundHoverColor);
}

.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li:active > a.evergreen-navigation-link,
.evergreen-primary-navigation .evergreen-primary-navigation-desktop-container li ul[class*='list--innerMenu'] li > button.evergreen-navigation-button:active .evergreen-navigation-button-text {
    color: var(--evgNavigationsMainDropdownLinkActiveColor);
    text-decoration-color: var(--evgNavigationsMainDropdownLinkTextDecorationActiveColor);
}

/* NAVIGATION LINK STYLING -- MOBILE */
/* Panel */
.evergreen-primary-navigation nav.evergreen-navigation-mobile,
.evergreen-primary-navigation nav.evergreen-navigation-mobile ul[class*='panel--innerMenu'] {
    background: var(--evgNavigationsMainMobileNavigationBackgroundColor)
}

/* Hamburger */
.evergreen-primary-navigation button.evergreen-primary-navigation-mobile-toggle {
    color: var(--evgNavigationsMainMobileHamburgerColor);
}

/* Icons */
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-icon,
.evergreen-primary-navigation .evergreen-navigation-mobile .panel-control .evergreen-navigation-button-text,
.evergreen-primary-navigation .evergreen-navigation-mobile--inner_toggle_container button.evergreen-primary-navigation-mobile-toggle {
    color: var(--evgNavigationsMainMobileNavigationColor);
}

/* Search */
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-mobile_search-container input {
    box-shadow: 0 0 0 30px var(--evgNavigationsMainMobileSearchBackgroundColor) inset;
    color: var(--evgNavigationsMainMobileSearchFontColor);
}

.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-mobile_search-container input::placeholder,
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-mobile_search-container .evergreen-icon {
    color: var(--evgNavigationsMainMobileSearchFontColor);
}

/* Links */
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-button-text,
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-link {
    color: var(--evgNavigationsMainMobileLinkColor);
    font-family: var(--evgNavigationsMainMobileLinkFontFamily);
    font-size: var(--evgNavigationsMainMobileLinkFontSizeM);
    font-weight: var(--evgNavigationsMainMobileLinkFontWeight);
    font-style: var(--evgNavigationsMainMobileLinkFontStyle);
    line-height: var(--evgNavigationsMainMobileLinkLineHeight);
    text-transform: var(--evgNavigationsMainMobileLinkCapitalization);
    text-decoration: var(--evgNavigationsMainMobileLinkTextDecoration);
    text-decoration-color: var(--evgNavigationsMainMobileLinkTextDecorationColor);
}

.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-button-text:hover,
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-link:hover {
    color: var(--evgNavigationsMainMobileLinkHoverColor);
    text-decoration: var(--evgNavigationsMainMobileLinkTextDecorationHover);
    text-decoration-color: var(--evgNavigationsMainMobileLinkTextDecorationHoverColor);
}

.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-button:focus .evergreen-navigation-button-text,
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-button:focus-visible .evergreen-navigation-button-text,
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-link:focus,
.evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-link:focus-visible {
    color: var(--evgNavigationsMainMobileLinkFocusColor);
    text-decoration: var(--evgNavigationsMainMobileLinkTextDecorationFocus);
    text-decoration-color: var(--evgNavigationsMainMobileLinkTextDecorationFocusColor);
}

.evergreen-primary-navigation .evergreen-navigation-mobile ul li.selected,
.evergreen-primary-navigation .evergreen-navigation-mobile ul li.expanded {
    border-bottom: var(--evgModuleItemUnderline);
    border-bottom-style: var(--evgModuleItemUnderlineStyle);
    border-bottom-color: var(--evgModuleItemUnderlineColor);
}

.evergreen-primary-navigation .evergreen-navigation-mobile .selected > a span,
.evergreen-primary-navigation .evergreen-navigation-mobile .expanded > a span,
.evergreen-primary-navigation .evergreen-navigation-mobile .selected > .evergreen-navigation-button > .evergreen-navigation-button-text,
.evergreen-primary-navigation .evergreen-navigation-mobile .expanded > .evergreen-navigation-button > .evergreen-navigation-button-text {
    color: var(--evgNavigationsMainMobileLinkActiveColor);
    text-decoration: var(--evgNavigationsMainMobileLinkTextDecorationActive);
    text-decoration-color: var(--evgNavigationsMainMobileLinkTextDecorationActiveColor);
    font-weight: var(--evgNavigationsMainMobileLinkFontWeightActive);
}

.evergreen-primary-navigation .evergreen-navigation-mobile .selected > .evergreen-navigation-button .evergreen-navigation-button-icon,
.evergreen-primary-navigation .evergreen-navigation-mobile .expanded > .evergreen-navigation-button .evergreen-navigation-button-icon {
    color: var(--evgNavigationsMainMobileLinkActiveColor);
}

.evergreen-layout .evergreen-primary-navigation .evergreen-primary-navigation-quicklink--link {
    color: var(--evgNavigationsCorporateLinkPrescrollColor);
    font-family: var(--evgNavigationsCorporateLinkFontFamily);
    font-size: var(--evgNavigationsCorporateLinkFontSize);
    font-weight: var(--evgNavigationsCorporateLinkFontWeight);
    font-style: var(--evgNavigationsCorporateLinkFontStyle);
    line-height: var(--evgNavigationsCorporateLinkLineHeight);
    text-transform: var(--evgNavigationsCorporateLinkCapitalization);
}

.evergreen-layout .evergreen-primary-navigation nav.evergreen-navigation-mobile .evergreen-primary-navigation-quicklink--link {
    color: var(--evgNavigationsMainMobileLinkColor);
    font-size: var(--evgNavigationsCorporateMobileLinkFontSizeM);
    font-family: var(--evgNavigationsCorporateMobileLinkFontFamily);
    font-weight: var(--evgNavigationsCorporateMobileLinkFontWeight);
    font-style: var(--evgNavigationsCorporateMobileLinkFontStyle);
    line-height: var(--evgNavigationsCorporateMobileLinkLineHeight);
    text-transform: var(--evgNavigationsCorporateMobileLinkCapitalization);

    /* NOTE: Using configuration from Main navigation */
    text-decoration: var(--evgNavigationsMainMobileLinkTextDecoration);
    text-decoration-color: var(--evgNavigationsMainMobileLinkTextDecorationColor);
}

.evergreen-layout .evergreen-primary-navigation .evergreen-primary-navigation-quicklink--link:hover {
    color: var(--evgNavigationsCorporateLinkPrescrollHoverColor);
}

.evergreen-layout .evergreen-primary-navigation nav.evergreen-navigation-mobile .evergreen-primary-navigation-quicklink--link:hover {
    color: var(--evgNavigationsMainMobileLinkHoverColor);
}

.evergreen-layout .evergreen-primary-navigation .evergreen-primary-navigation-quicklink--link:focus,
.evergreen-layout .evergreen-primary-navigation .evergreen-primary-navigation-quicklink--link:focus-visible {
    color: var(--evgNavigationsCorporateLinkPrescrollFocusColor);
}

.evergreen-layout .evergreen-primary-navigation nav.evergreen-navigation-mobile .evergreen-primary-navigation-quicklink--link:focus,
.evergreen-layout .evergreen-primary-navigation nav.evergreen-navigation-mobile .evergreen-primary-navigation-quicklink--link:focus-visible {
    color: var(--evgNavigationsMainMobileLinkFocusColor);
}

.evergreen-layout.evergreen-layout--scroll .evergreen-primary-navigation .evergreen-primary-navigation-quicklink--link {
    color: var(--evgNavigationsCorporateLinkScrollColor);
}

.evergreen-layout.evergreen-layout--scroll .evergreen-primary-navigation .evergreen-primary-navigation-quicklink--link:hover {
    color: var(--evgNavigationsCorporateLinkScrollHoverColor);
}

.evergreen-layout.evergreen-layout--scroll .evergreen-primary-navigation .evergreen-primary-navigation-quicklink--link:focus,
.evergreen-layout.evergreen-layout--scroll .evergreen-primary-navigation .evergreen-primary-navigation-quicklink--link:focus-visible {
    color: var(--evgNavigationsCorporateLinkScrollFocusColor);
}

.evergreen-primary-navigation-menu--corporate .evergreen-primary-navigation-desktop-container {
    justify-content: var(--evgNavigationsCorporateLinkAlignment);
}

.evergreen-primary-navigation-menu--primary .evergreen-primary-navigation-desktop-container ul {
    justify-content: var(--evgNavigationsMainLinkAlignment);
}

@media only screen and (max-width: 1024px) {
    .evergreen-layout .evergreen-section.evergreen-section--navigation .evergreen-primary-navigation-menu--primary
    {
        background: none;
    }

    .evergreen-primary-navigation-container {
        display: flex;
        flex: 1;
        align-self: center;
    }

    .evergreen-pane.evergreen-pane--navigation .NavigationPaneDiv > div > .evergreen {
        display: flex;
        height: 100%;
    }

    .evergreen-pane.evergreen-pane--navigation .NavigationPaneDiv {
        flex-grow: 1;
        min-width: 32px;
        display: flex;
        justify-content: space-between;
        flex-direction: row;
        align-items: stretch;
    }

    .evergreen-pane.evergreen-pane--navigation .NavigationPaneDiv > div[class*="NavigationPaneDiv"] {
        flex: 1 0 auto;
    }
}

@media only screen and (max-width: 480px) {
    .evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-button-text,
    .evergreen-primary-navigation .evergreen-navigation-mobile .evergreen-navigation-link {
        font-size: var(--evgNavigationsMainMobileLinkFontSizeS);
    }

    .evergreen-layout .evergreen-primary-navigation nav.evergreen-navigation-mobile .evergreen-primary-navigation-quicklink--link {
        font-size: var(--evgNavigationsCorporateMobileLinkFontSizeS);
    }
}


/* SECONDARY NAVIGATION LINK STYLING -- DESKTOP */

/* Breadcrumbs Section */
.evergreen-pane.evergreen-pane--breadcrumb.evergreen-section--sticky {
    margin: 0 auto;
    padding: 0;
    width: 100%;
}

.evergreen-layout .evergreen-secondary-navigation {
    max-width: 100vw;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    background: var(--navigationsSecondaryBackgroundColor);
}

.evergreen-layout.evergreen-layout--scroll .evergreen-section--sticky .evergreen-secondary-navigation {
    --navigationBackgroundColor: var(--evgNavigationsSecondaryBackgroundScrollColor);
}

.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li > a.evergreen-navigation-link {
    font-family: var(--evgNavigationsSecondaryLinkFontFamily);
    font-size: var(--evgNavigationsSecondaryLinkFontSize);
    font-weight: var(--evgNavigationsSecondaryLinkFontWeight);
    line-height: var(--evgNavigationsSecondaryLinkLineHeight);
    font-style: var(--evgNavigationsSecondaryLinkFontStyle);
    text-transform: var(--evgNavigationsSecondaryLinkCapitalization);
}

.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li {
    background: var(--navigationsSecondaryTabBackgroundColor);
}

.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li:hover,
.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li:focus,
.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li:focus-visible{
    background: var(--navigationsSecondaryTabBackgroundHoverColor);
}

.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li.selected,
.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li.expanded {
    background: var(--navigationsSecondaryTabBackgroundFocusColor);
}

.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li > a.evergreen-navigation-link {
    text-decoration: var(--evgNavigationsSecondaryLinkTextDecoration);
    text-decoration-color: var(--navigationsSecondaryTextDecorationColor);
    text-decoration-thickness: 1px;
    color: var(--navigationsSecondaryLinkColor);
}

.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li:hover > a.evergreen-navigation-link,
.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li:focus > a.evergreen-navigation-link,
.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li:focus-visible > a.evergreen-navigation-link {
    text-decoration: var(--evgNavigationsSecondaryLinkTextDecorationHover);
    text-decoration-color: var(--navigationsSecondaryTextDecorationHoverColor);
    color: var(--navigationsSecondaryLinkHoverColor);
}

.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li.selected > a.evergreen-navigation-link,
.evergreen-secondary-navigation .evergreen-secondary-navigation-container ul li.expanded > a.evergreen-navigation-link {
    text-decoration: var(--evgNavigationsSecondaryLinkTextDecorationFocus);
    text-decoration-color: var(--navigationsSecondaryTextDecorationFocusColor);
    color: var(--navigationsSecondaryLinkFocusColor);
}


/* CORPORATE NAVIGATION */
.evergreen-corporate-navigation {
  display: flex;
  flex-direction: row;
  column-gap: 32px;
}

/* Container */
.evergreen-corporate-navigation-container {
  display: flex;
  align-items: center;
  flex: 1;
}

.evergreen-corporate-navigation .evergreen-container.evergreen-container-content {
  display: flex;
  align-items: center;
  flex: 1;
  justify-content: flex-start;

    .evergreen-navigation-list {
        justify-content: flex-start;
    }

    &.evergreen-container-content--center {
        justify-content: center;

        .evergreen-navigation-list {
            justify-content: center;
        }
    }

    &.evergreen-container-content--right {
        justify-content: flex-end;

        .evergreen-navigation-list {
            justify-content: flex-end;
        }
    }
}

.evergreen-container.evergreen-container--outer.evergreen-corporate-navigation {
    margin: 0;
    padding-top: 16px;
    padding-bottom: 16px;
}

/* List */
.evergreen-corporate-navigation ul {
  justify-content: left;
  flex-grow: 1;
  display: flex;
  flex-wrap: wrap;
  column-gap: 16px;
  row-gap: 8px;
  padding-left: 0;
}

/* Link */
.evergreen-corporate-navigation ul li {
  position: relative;
  width: fit-content;
  list-style: none;
  display: inline-block;
}

.evergreen-corporate-navigation ul li > a {
  background: none;
  border: none;
  padding: 8px 0;
  min-width: fit-content;
  line-height: 1;
  font-size: 14px;
  display: block;
  text-transform: none;
  text-align: inherit;
  cursor: pointer;
}

.evergreen-corporate-navigation ul li > a.evergreen-navigation-link {
    font-family: var(--evgNavigationsMainLinkFontFamily);
    font-size: var(--evgNavigationsMainLinkFontSize);
    font-weight: var(--evgNavigationsMainLinkFontWeight);
    line-height: var(--evgNavigationsMainLinkLineHeight);
    font-style: var(--evgNavigationsMainLinkFontStyle);
    text-transform: var(--evgNavigationsMainLinkCapitalization);
}

.evergreen-corporate-navigation ul li > a.evergreen-navigation-link {
    text-decoration: var(--evgNavigationsMainLinkTextDecoration);
    text-decoration-color: var(--navigationsMainTextDecorationColor);
    text-decoration-thickness: 1px;
    color: var(--navigationsMainLinkColor);
}

.evergreen-corporate-navigation ul li > a.evergreen-navigation-link:hover {
    text-decoration: var(--evgNavigationsMainLinkTextDecorationHover);
    text-decoration-color: var(--navigationsMainTextDecorationHoverColor);
    color: var(--navigationsMainLinkHoverColor);
}

.evergreen-corporate-navigation ul li > a.evergreen-navigation-link:focus,
.evergreen-corporate-navigation ul li > a.evergreen-navigation-link:focus-visible {
    text-decoration: var(--evgNavigationsMainLinkTextDecorationFocus);
    text-decoration-color: var(--navigationsMainTextDecorationFocusColor);
    color: var(--navigationsMainLinkFocusColor);
}


/* CORPORATE NAVIGATION -- MOBILE */
@media only screen and (max-width: 1024px) {
    .evergreen-corporate-navigation-container {
        display: none;
    }

    .evergreen-primary-navigation-menu-container {
        transition: all 0.5s ease-in-out;
        padding: 24px;
        background: var(--navigationsMainMobileBackgroundColor);
    }

    .evergreen-layout--scroll .evergreen-primary-navigation-menu-container {
        padding: 12px 24px;
    }

}
/* Banner */
.evergreen-section.evergreen-section--banner {
    position: relative;
}

.evergreen-section.evergreen-section--breadcrumb {
    position: relative;
}

.evergreen-layout .evergreen-layout-header-wrapper
{
    --staticBannerBackgroundColor: var(--evgBannersStaticBackgroundColor);
    --staticBannerHorizontalPadding: var(--evgBannersStaticHorizontalPadding);
}

.evergreen-layout .evergreen-layout-header
{
    --staticBannerBackgroundImage: var(--evgBannersStaticBackgroundImageUrl);
    --staticBannerBackgroundImageMobile: var(--evgBannersStaticBackgroundImageMobileUrl);
    --staticBackgroundVideoTabletDisplay: var(--evgBannersStaticBackgroundVideoShowOnTablet);
    --staticBannerImagePosition: var(--evgBannersStaticBackgroundImagePosition);
    --staticBannerImageSizing: var(--evgBannersStaticBackgroundImageSizing);
    --staticBannerOverlayColor: var(--evgBannersStaticBackgroundOverlayColor);
    --staticBannerMinimumHeightSizeL: var(--evgBannersStaticMinimumHeightSizeL);
    --staticBannerMinimumHeightSizeM: var(--evgBannersStaticMinimumHeightSizeM);
    --staticBannerMinimumHeightSizeS: var(--evgBannersStaticMinimumHeightSizeS);
    --staticBannerBorderRadius: var(--evgBannersStaticBorderRadius);
}

.evergreen-layout .evergreen-layout-header-overlay .evergreen-layout-header-overlay-color,
.evergreen-layout .evergreen-section .evergreen-section-overlay--banner .evergreen-section-overlay-color
{
    width: 100%;
    height: 100%;
    background-color: var(--staticBannerOverlayColor);
    position: relative;
}

.evergreen-layout .evergreen-layout-header--small-banner .evergreen-layout-header-overlay,
.evergreen-layout .evergreen-layout-header--full-banner .evergreen-section-overlay--banner {
    display: none;
}

.evergreen-layout .evergreen-layout-header--small-banner
{
    min-height: 0;
}

.evergreen-layout .evergreen-layout-header-overlay,
.evergreen-layout .evergreen-section-overlay--banner {
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    pointer-events: none;
}

.evergreen-layout .evergreen-layout-header--small-banner .evergreen-section-overlay--banner {
    z-index: -1;
}
z
.evergreen-layout .evergreen-section evergreen-section--banner {
    background-color: var(--staticBannerBackgroundColor);
    z-index: -1;
}

.evergreen-layout .evergreen-layout-header--full-banner,
.evergreen-layout .evergreen-layout-header--small-banner .evergreen-section-overlay--banner {
    background-repeat: no-repeat;
    background-image: var(--staticBannerBackgroundImage);
    background-position: var(--staticBannerImagePosition);
    background-size: var(--staticBannerImageSizing);
}

.evergreen-layout .evergreen-layout-header--full-banner,
.evergreen-layout .evergreen-layout-header--small-banner .evergreen-section--banner {
    min-height: var(--staticBannerMinimumHeightSizeL);
    background-color: var(--staticBannerBackgroundColor);
    z-index: 3;
}

.evergreen-layout .evergreen-layout-header-video,
.evergreen-layout .evergreen-section--banner .evergreen-layout-banner-video {
    display: none;
    width: 100%;
    height: 100%;
    object-fit: cover;
    position: absolute;
    /* the following CSS centers the video in the header */
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
}

/** Responsive Desktop **/
@media (min-width: 1025px) {
    .evergreen-layout .evergreen-layout-header--small-banner .evergreen-section--banner
    {
        margin: var(--staticBannerHorizontalPadding);
        border-radius: var(--staticBannerBorderRadius);
        overflow: hidden;
    }

    .evergreen-layout .evergreen-layout-header--full-banner .evergreen-layout-header-video,
    .evergreen-layout .evergreen-layout-header--small-banner .evergreen-section--banner .evergreen-layout-banner-video
    {
        display: block;
    }
}

/** Responsive Tablet **/
@media (min-width: 481px) and (max-width: 1024px){
    .evergreen-layout .evergreen-layout-header--full-banner,
    .evergreen-layout .evergreen-layout-header--small-banner .evergreen-section--banner {
        min-height: var(--staticBannerMinimumHeightSizeM);
    }

    .evergreen-layout .evergreen-layout-header--full-banner .evergreen-layout-header-video,
    .evergreen-layout .evergreen-layout-header--small-banner .evergreen-section--banner .evergreen-layout-banner-video {
        display: var(--staticBackgroundVideoTabletDisplay);
        height: 100%;
        object-fit: cover;
    }
}

/** Responsive Mobile **/
@media (max-width: 480px){
    .evergreen-layout .evergreen-layout-header--full-banner,
    .evergreen-layout .evergreen-layout-header--small-banner .evergreen-section--banner {
        min-height: var(--staticBannerMinimumHeightSizeS);
    }

    .evergreen-layout .evergreen-layout-header--full-banner,
    .evergreen-layout .evergreen-layout-header--small-banner .evergreen-section-overlay--banner {
        background-image: var(--staticBannerBackgroundImageMobile);
    }
}/* Slider */
.evergreen-slider-description a {
    --fontSize: var(--evgHyperlinkFontSizeL);
    --fontFamily: var(--evgHyperlinkFontFamily);
    --fontColor: var(--evgHyperlinkFontColor);
    --fontWeight: var(--evgHyperlinkFontWeight);
    --fontStyle: var(--evgHyperlinkFontStyle);
    --lineHeight: var(--evgHyperlinkFontLineHeight);
    --capitalization: var(--evgHyperlinkFontCapitalization);
    --textDecoration: var(--evgHyperlinkDecorationTextDecoration);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-style: var(--fontStyle);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);

    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);

    transition-property: color, text-decoration;
    transition-duration: 0.3s;
    transition-timing-function: ease-in-out;
}

.evergreen-slider-arrow {
    color: var(--evgHyperlinkFontColor);
}

.evergreen-slider-description a:not([class*="evergreen-button"]):hover
{
    --fontColor: var(--evgHyperlinkFontHoverColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationHover);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationHoverColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

.evergreen-slider-description a:not([class*="evergreen-button"]):focus,
.evergreen-slider-description a:not([class*="evergreen-button"]):focus-visible
{
    --fontColor: var(--evgHyperlinkFontFocusColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationFocus);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationFocusColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);

}


.evergreen-slider-bottom-controls {
  --borderColor: var(--evgPaginationBorderColor);
  --backgroundColor: var(--evgPaginationBackgroundColor);
  --backgroundActiveColor: var(--evgPaginationBackgroundActiveColor);
}

.evergreen-slider-bottom-controls .slick_autoplay-ctrl button:before {
    color: var(--backgroundColor);
    color: var(--backgroundActiveColor);
}

.evergreen-slider-bottom-controls .evergreen-slider-dots li button {
    background: var(--backgroundColor);
    border: 1px solid var(--borderColor);
}

.evergreen-slider-bottom-controls .evergreen-slider-dots .slick-active button {
    background: var(--backgroundActiveColor);
}/* Table */
.evergreen table,
.evergreen .evergreen-table {

    --fontFamily: var(--evgTableFontFamily);
    --headingFontSize: var(--evgTableFontSizeL);
    --headingFontColor: var(--evgTableFontColor);
    --headingFontWeight: var(--evgTableFontWeight);
    --headingLineHeight: var(--evgTableFontLineHeight);
    --headingCapitalization: var(--evgTableFontCapitalization);
    --headerBackgroundColor: var(--evgTableBackgroundColor);

    --categoryFontColor: var(--evgTableSecondaryFontAltColor);
    --categoryBackgroundColor: var(--evgTableBackgroundAltColor);

    --rowFontSize: var(--evgTableSecondaryFontSizeL);
    --rowFontColor: var(--evgTableSecondaryFontColor);
    --rowFontWeight: var(--evgTableSecondaryFontWeight);
    --rowCapitalization: var(--evgTableSecondaryFontCapitalization);
    --rowBackgroundColor: var(--evgTableSecondaryBackgroundColor);
    --rowAltBackgroundColor: var(--evgTableZebra);

    --border: var(--evgTableRowUnderline);
    --borderColor: var(--evgTableBorderColor);
    --borderRadius: var(--evgTableBorderRadius);
    --moduleItemCellPadding: var(--evgPaddingItemPadding);
}

.evergreen table tbody,
.evergreen table tbody tr,
.evergreen table tr,
.evergreen .evergreen-table tbody,
.evergreen .evergreen-table .evergreen-table-body,
.evergreen .evergreen-table tr,
.evergreen .evergreen-table .evergreen-table-row,
.evergreen .evergreen-table .evergreen-table-row th {
    font-size: var(--rowFontSize);
    font-family: var(--fontFamily);
    font-weight: var(--rowFontWeight);
    color: var(--rowFontColor);
    text-transform: var(--rowCapitalization);
    background: var(--rowBackgroundColor);
    border-bottom: var(--border);
    border-color: var(--borderColor);
}

.evergreen table tbody tr:nth-child(even),
.evergreen table tr:nth-child(even),
.evergreen .evergreen-table tbody tr:nth-child(even),
.evergreen .evergreen-table .evergreen-table-body tr:nth-child(even),
.evergreen .evergreen-table tr:nth-child(even),
.evergreen .evergreen-table .evergreen-table-row:nth-child(even) {
    background: var(--rowAltBackgroundColor);
}

.evergreen .evergreen-table tbody td.evergreen-table-category,
.evergreen .evergreen-table tbody th.evergreen-table-category,
.evergreen .evergreen-table .evergreen-table-category {
    color: var(--categoryFontColor);
    background: var(--categoryBackgroundColor);
}

.evergreen .evergreen-table thead,
.evergreen .evergreen-table .evergreen-table-header,
.evergreen .evergreen-table thead tr {
    --fontSize: var(--headingFontSize);
    --fontColor: var(--headingFontColor);
    --fontWeight: var(--headingFontWeight);
    --lineHeight: var(--headingLineHeight);
    --capitalization: var(--headingCapitalization);
    --backgroundColor: var(--headerBackgroundColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-weight: var(--headingFontWeight);
    color: var(--headingFontColor);
    text-transform: var(--headingCapitalization);
    background: var(--headerBackgroundColor);
}

.evergreen .evergreen-table-arrow {
    --fontSize: var(--evgTableFontSizeL);
    --fontColor: var(--evgTableFontColor);
    --fontWeight: var(--evgTableFontWeight);
    --lineHeight: var(--evgTableFontLineHeight);

    font-size: var(--fontSize);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
}

.evergreen .evergreen-table thead tr th {
    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-weight: var(--headingFontWeight);
    color: var(--headingFontColor);
    text-transform: var(--headingCapitalization);
}

.evergreen .evergreen-table tbody a,
.evergreen .evergreen-table tbody .evergreen-link {
    --fontFamily: var(--evgHyperlinkFontFamily);
    --fontColor: var(--evgHyperlinkFontColor);
    --fontWeight: var(--evgHyperlinkFontWeight);
    --fontStyle: var(--evgHyperlinkFontStyle);
    --lineHeight: var(--evgHyperlinkFontLineHeight);
    --capitalization: var(--evgHyperlinkFontCapitalization);
    --textDecoration: var(--evgHyperlinkDecorationTextDecoration);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationColor);

    font-family: var(--fontFamily);
    font-style: var(--fontStyle);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);

    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

.evergreen .evergreen-table tbody a:hover,
.evergreen .evergreen-table tbody .evergreen-link:hover {

    --fontColor: var(--evgHyperlinkFontHoverColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationHover);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationHoverColor);

    color: var(--fontColor);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}


.evergreen .evergreen-table tbody a:focus,
.evergreen .evergreen-table tbody .evergreen-link:focus,
.evergreen .evergreen-table tbody a:focus-visible,
.evergreen .evergreen-table tbody .evergreen-link:focus-visible {

    --fontColor: var(--evgHyperlinkFontFocusColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationFocus);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationFocusColor);

    color: var(--fontColor);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}


/** Responsive Tablet **/
@media (min-width: 481px) and (max-width: 1024px){

    .evergreen .evergreen-table tbody,
    .evergreen .evergreen-table .evergreen-table-body,
    .evergreen .evergreen-table tr {
        font-size: var(--evgTableSecondaryFontSizeM);
    }

    .evergreen .evergreen-table-arrow {
        font-size: var(--evgTableFontSizeM);
    }

    .evergreen .evergreen-table thead,
    .evergreen .evergreen-table .evergreen-table-header,
    .evergreen .evergreen-table thead tr,
    .evergreen .evergreen-table thead tr th {
        font-size: var(--evgTableFontSizeM);
    }
}

/** Responsive Mobile **/
@media (max-width: 480px){

    .evergreen table tbody,
    .evergreen table tbody tr,
    .evergreen .evergreen-table tbody,
    .evergreen .evergreen-table .evergreen-table-body,
    .evergreen .evergreen-table tr {
        --fontSize: var(--evgTableSecondaryFontSizeS);
        font-size: var(--fontSize);
    }

    .evergreen table thead,
    .evergreen table thead tr,
    .evergreen .evergreen-table thead,
    .evergreen .evergreen-table .evergreen-table-header,
    .evergreen .evergreen-table thead tr,
    .evergreen .evergreen-table thead tr th {
        --fontSize: var(--evgTableFontSizeS);
        font-size: var(--fontSize);

    }

    .evergreen .evergreen-table-arrow {
        font-size: var(--evgTableFontSizeS);
    }

    .evergreen-wysiwyg table {
        --maxWidth: 100%;
        --overflowX: auto;
        --display: block;

        max-width: var(--maxWidth);
        overflow-x: var(--overflowX);
        display: var(--display);
    }
}/* Committee */
.evergreen .evergreen-committee-composition {
    --backgroundColor: var(--evgModuleBackgroundColor);

    --fontFamily: var(--evgTableFontFamily);
    --headingFontColor: var(--evgTableFontColor);
    --headingFontWeight: var(--evgTableFontWeight);
    --headingLineHeight: var(--evgTableFontLineHeight);
    --headingCapitalization: var(--evgTableFontCapitalization);
    --headerBackgroundColor: var(--evgTableBackgroundColor);

    --categoryFontColor: var(--evgTableSecondaryFontAltColor);
    --categoryBackgroundColor: var(--evgTableBackgroundAltColor);

    --cellFontColor: var(--evgTableSecondaryFontColor);
    --cellFontWeight: var(--evgTableSecondaryFontWeight);
    --cellCapitalization: var(--evgTableSecondaryFontCapitalization);
    --rowBackgroundColor: var(--evgTableSecondaryBackgroundColor);
    --rowAltBackgroundColor: var(--evgTableZebra);

    --border: var(--evgTableRowUnderline);
    --borderColor: var(--evgTableBorderColor);
    --borderRadius: var(--evgTableBorderRadius);
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-table {
    table-layout: fixed;
    width: 100%;
}

.evergreen .evergreen-committee-composition thead,
.evergreen .evergreen-committee-composition .evergreen-committee-composition-header,
.evergreen .evergreen-committee-composition thead tr {
    --fontSize: var(--headingFontSize);
    --fontColor: var(--headingFontColor);
    --fontWeight: var(--headingFontWeight);
    --lineHeight: var(--headingLineHeight);
    --capitalization: var(--headingCapitalization);
    --backgroundColor: var(--headerBackgroundColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-weight: var(--headingFontWeight);
    color: var(--headingFontColor);
    text-transform: var(--headingCapitalization);
    background: var(--headerBackgroundColor);
}

.evergreen .evergreen-committee-composition tbody .evergreen-committee-composition-row,
.evergreen .evergreen-committee-composition tbody .evergreen-committee-composition-row {
    font-family: var(--fontFamily);
    font-size: var(--cellFontSize);
    font-weight: var(--cellFontWeight);
    color: var(--cellFontColor);
    text-transform: var(--cellCapitalization);
    background: var(--rowBackgroundColor);
    border-bottom: var(--border);
    border-color: var(--borderColor);
}

.evergreen .evergreen-committee-composition tbody tr:nth-child(even),
.evergreen .evergreen-committee-composition .evergreen-committee-composition-body tr:nth-child(even),
.evergreen .evergreen-committee-composition tr:nth-child(even),
.evergreen .evergreen-committee-composition .evergreen-committee-composition-row:nth-child(even),
.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-committee-composition-member:nth-child(even) {
}

.evergreen .evergreen-committee-composition thead tr th,
.evergreen .evergreen-committee-composition .evergreen-committee-composition-header tr th,
.evergreen .evergreen-committee-composition tbody tr td,
.evergreen .evergreen-committee-composition .evergreen-committee-composition-body tr td {
    padding: 20px 15px;
    overflow-wrap: break-word;
    text-align: center;
}

.evergreen .evergreen-committee-composition thead tr th,
.evergreen .evergreen-committee-composition .evergreen-committee-composition-header tr th {
    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-weight: var(--headingFontWeight);
    color: var(--headingFontColor);
    text-transform: var(--headingCapitalization);
}

.evergreen .evergreen-committee-composition tbody tr td,
.evergreen .evergreen-committee-composition tbody tr th,
.evergreen .evergreen-committee-composition .evergreen-committee-composition-body tr th,
.evergreen .evergreen-committee-composition .evergreen-committee-composition-body tr td {
    font-family: var(--fontFamily);
    font-size: var(--cellFontSize);
    font-weight: var(--cellFontWeight);
    color: var(--cellFontColor);
    text-transform: var(--cellCapitalization);
}

.evergreen-committee-composition-person-name-wrap,
.evergreen-committee-composition-committee-composition-name-wrap {
    display: flex;
    gap: 8px;
    align-items: center;
}

.evergreen .evergreen-committee-composition .committee-membership-options {
    display: flex;
    flex-wrap: wrap;
    flex-direction: row;
    justify-content: left;
    align-items: center;
    margin-top: 15px;
    padding: 20px 15px;
    row-gap: 20px;
    column-gap: 30px;
}

.evergreen .evergreen-committee-composition .committee-membership-options li {
    display: flex;
    align-items: center;
    font-family: var(--fontFamily);
    font-size: var(--cellFontSize);
    font-weight: var(--cellFontWeight);
    color: var(--cellFontColor);
    text-transform: var(--cellCapitalization);
    list-style: none;
}

.evergreen .evergreen-committee-composition .committee-membership-options li .icon {
    font-size: var(--cellFontSize);
    font-color: var(--iconColor);
}

.evergreen .evergreen-committee-composition .committee-membership-options li .icon.member {
    --iconColor: var(--cellFontColor);
    --iconFilledColor: var(--evgModuleBackgroundColor);
}

.evergreen .evergreen-committee-composition .committee-membership-options li .icon.comittee-chair {
    --iconColor: var(--evgPrimaryColor);
    --iconFilledColor: var(--evgPrimaryColor);
}

.evergreen .evergreen-committee-composition .committee-membership-options li .icon.board-chair {
    --iconColor: var(--cellFontColor);
    --iconFilledColor: var(--cellFontColor);
}

.evergreen .evergreen-committee-composition .committee-membership-options li .icon.lead-independent-director {
    --iconColor: var(--cellFontColor);
    --iconFilledColor: var(--cellFontColor);
}

.evergreen .evergreen-committee-composition .committee-membership-options li .icon.independent-director {
    --iconColor: var(--cellFontColor);
    --iconFilledColor: var(--evgModuleBackgroundColor);
}

.evergreen .evergreen-committee-composition .committee-membership-options li .icon.financial-expert {
    --iconColor: var(--cellFontColor);
    --iconFilledColor: var(--evgModuleBackgroundColor);
}

/** Mobile style **/
.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion {
    display: none;
}

.committee-composition-icon-empty {
    &:before {
        content: '\00a0';
    }
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-accordion {
    --fontFamily: var(--evgTableFontFamily);
    --headingFontSize: var(--evgTableFontSizeL);
    --headingFontColor: var(--evgTableFontColor);
    --headingFontActiveColor: var(--evgTableFontColor);
    --headingFontWeight: var(--evgTableFontWeight);
    --headingLineHeight: var(--evgTableFontLineHeight);
    --headingCapitalization: var(--evgTableFontCapitalization);
    --headerBackgroundColor: var(--evgTableBackgroundColor);
    background: none;
    border-bottom: none;
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-accordion .evergreen-accordion-header .evergreen-committee-composition-name,
.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-accordion button .accordion-toggle-icon {
    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-weight: var(--headingFontWeight);
    color: var(--headingFontColor);
    text-transform: var(--headingCapitalization);
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-accordion .evergreen-accordion-header button.accordion-toggle {
    padding: 20px 15px;
    justify-content: space-between;
    gap: 8px;
    background: var(--headerBackgroundColor);
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-accordion .evergreen-accordion-content {
    background: none;
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-accordion .evergreen-committee-composition-members-list {
    margin-bottom: 15px;
    background: var(--rowBackgroundColor);
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-accordion:last-child .evergreen-committee-composition-members-list {
    margin-bottom: 0;
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-committee-composition-member {
    font-family: var(--fontFamily);
    font-size: var(--cellFontSize);
    font-weight: var(--cellFontWeight);
    color: var(--cellFontColor);
    text-transform: var(--cellCapitalization);
    background: var(--rowBackgroundColor);
    display: flex;
    justify-content: space-between;
    padding: 15px;
    column-gap: 8px;
    overflow-wrap: anywhere;
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-committee-composition-member:not(:last-child) {
    border-bottom: var(--border);
    border-color: var(--borderColor);
}

.evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion .evergreen-accordion .evergreen-committee-composition-no-members {
    font-family: var(--fontFamily);
    font-size: var(--cellFontSize);
    font-weight: var(--cellFontWeight);
    color: var(--cellFontColor);
    background: var(--rowBackgroundColor);
    padding: 15px;
    text-align: center;
}

/** Responsive Desktop **/
@media (min-width: 1025px) {
    .evergreen .evergreen-committee-composition thead tr th,
    .evergreen .evergreen-committee-composition
    .evergreen-committee-composition-header tr th {
        font-size: var(--evgTableSecondaryFontSizeL);
    }

    .evergreen .evergreen-committee-composition {
        --cellFontSize: var(--evgTableSecondaryFontSizeL);
    }
}

/** Responsive Tablet **/
@media (max-width: 1024px){
    .evergreen .evergreen-committee-composition thead tr th,
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-header tr th,
    .evergreen .evergreen-committee-composition tbody tr td,
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-body tr td {
        width: 100%;
    }
}
@media (max-width: 768px) {
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-table {
        display: none;
    }

    .evergreen .evergreen-committee-composition .evergreen-committee-composition-mobile-accordion {
        display: block;
    }
}

@media (min-width: 481px) and (max-width: 1024px){
    .evergreen .evergreen-committee-composition thead tr th,
    .evergreen .evergreen-committee-composition
    .evergreen-committee-composition-header tr th {
        font-size: var(--evgTableSecondaryFontSizeM);
    }

    .evergreen .evergreen-committee-composition {
        --cellFontSize: var(--evgTableSecondaryFontSizeM);
    }

    .evergreen .evergreen-committee-composition thead tr th,
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-header tr th,
    .evergreen .evergreen-committee-composition tbody tr td,
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-body tr td {
        width: 100%;
    }

    .evergreen .evergreen-committee-composition tbody,
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-body,
    .evergreen .evergreen-committee-composition tr {
        font-size: var(--evgTableSecondaryFontSizeM);
    }

    .evergreen .evergreen-committee-composition thead,
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-header,
    .evergreen .evergreen-committee-composition thead tr,
    .evergreen .evergreen-committee-composition thead tr th {
        font-size: var(--evgTableFontSizeM);
    }
}

/** Responsive Mobile **/
@media (max-width: 480px){
    .evergreen .evergreen-committee-composition thead tr th,
    .evergreen .evergreen-committee-composition
    .evergreen-committee-composition-header tr th {
        font-size: var(--evgTableSecondaryFontSizeS);
    }

    .evergreen .evergreen-committee-composition {
        --cellFontSize: var(--evgTableSecondaryFontSizeS);
    }

    .evergreen .evergreen-committee-composition table tbody,
    .evergreen .evergreen-committee-composition table tbody tr,
    .evergreen .evergreen-committee-composition tbody,
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-body,
    .evergreen .evergreen-committee-composition tr {
        font-size: var(--evgTableSecondaryFontSizeS);
    }

    .evergreen .evergreen-committee-composition table thead,
    .evergreen .evergreen-committee-composition table thead tr,
    .evergreen .evergreen-committee-composition thead,
    .evergreen .evergreen-committee-composition .evergreen-committee-composition-header,
    .evergreen .evergreen-committee-composition thead tr,
    .evergreen .evergreen-committee-composition thead tr th {
        font-size: var(--evgTableFontSizeS);
    }
}

@media (max-width: 320px){
    .evergreen .evergreen-committee-composition .committee-membership-options {
        padding: 15px 15px;
        row-gap: 15px;
    }
}

.evergreen-committee-composition-table-container {
    border-radius: var(--borderRadius);
    overflow: hidden;
}.evergreen-consent {
    user-select: none;

    /* Cookie Banner Styles */
    .evergreen-consent-banner {
        background: var(--evgCookiesBannerBackgroundColor);
        color: var(--evgCookiesBannerDescriptionFontColor);
        font-family: var(--evgCookiesBannerDescriptionFontFamily);
        font-weight: var(--evgCookiesBannerDescriptionFontWeight);
        line-height: var(--evgCookiesBannerDescriptionFontLineHeight);
        text-transform: var(--evgCookiesBannerDescriptionFontCapitalization);
    }

    .evergreen-consent-banner-header {
        font-family: var(--evgCookiesBannerHeadingFontFamily);
        font-weight: var(--evgCookiesBannerHeadingFontWeight);
        line-height: var(--evgCookiesBannerHeadingFontLineHeight);
        color: var(--evgCookiesBannerHeadingFontColor);
        text-transform: var(--evgCookiesBannerHeadingFontCapitalization);
    }

    .evergreen-consent-banner-text a {
        color: var(--evgCookiesLinkColor);
        line-height: var(--evgCookiesLinkLineHeight);
        text-decoration: var(--evgCookiesLinkTextDecoration);
        text-decoration-color: var(--evgCookiesLinkTextDecorationColor);
    }

    .evergreen-consent-banner-text a:hover {
        color: var(--evgCookiesLinkHoverColor);
        text-decoration: var(--evgCookiesLinkTextDecorationHover);
        text-decoration-color: var(--evgCookiesLinkTextDecorationHoverColor);
    }

    .evergreen-consent-banner-text a:focus {
        color: var(--evgCookiesLinkFocusColor);
        text-decoration: var(--evgCookiesLinkTextDecorationFocus);
        text-decoration-color: var(--evgCookiesLinkTextDecorationFocusColor);
    }

    .evergreen-consent-banner-btn--close {
        background: none;
        border: none;
        outline: none;
        cursor: pointer;

        span {
            color: var(--evgCookiesBannerCloseButtonIconColor);
        }
    }

    .evergreen-consent-banner-btn--accept {
        display: inline-block;
        text-align: center;
        cursor: pointer;
        transition: all 0.3s ease-in-out;

        font-family: var(--evgCookiesBannerAcceptButtonFontFamily);
        font-weight: var(--evgCookiesBannerAcceptButtonFontWeight);
        font-style: var(--evgCookiesBannerAcceptButtonFontStyle);
        line-height: var(--evgCookiesBannerAcceptButtonFontLineHeight);
        color: var(--evgCookiesBannerAcceptButtonFontColor);
        text-transform: var(--evgCookiesBannerAcceptButtonFontCapitalization);
        text-decoration: var(--evgCookiesBannerAcceptButtonDecorationTextDecoration);
        text-decoration-color: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationColor);
        border-radius: var(--evgCookiesBannerAcceptButtonBorderRadius);
        border: 1px solid var(--evgCookiesBannerAcceptButtonBorderColor);
        background: var(--evgCookiesBannerAcceptButtonBackgroundColor);
        padding: var(--evgCookiesBannerAcceptButtonPaddingVerticalPadding) 20px;

    }

    .evergreen-consent-banner-btn--accept:hover {
        color: var(--evgCookiesBannerAcceptButtonFontHoverColor);
        text-decoration: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationHover);
        text-decoration-color: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationHoverColor);
        border-color: var(--evgCookiesBannerAcceptButtonBorderHoverColor);
        background: var(--evgCookiesBannerAcceptButtonBackgroundHoverColor);
    }

    .evergreen-consent-banner-btn--accept:focus {
        color: var(--evgCookiesBannerAcceptButtonFontFocusColor);
        text-decoration: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationFocus);
        text-decoration-color: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationFocusColor);
        border-color: var(--evgCookiesBannerAcceptButtonBorderFocusColor);
        background: var(--evgCookiesBannerAcceptButtonBackgroundFocusColor);
    }

    .evergreen-consent-banner-btn--reject {
        display: inline-block;
        text-align: center;
        cursor: pointer;
        transition: all 0.3s ease-in-out;

        font-family: var(--evgCookiesBannerRejectButtonFontFamily);
        font-weight: var(--evgCookiesBannerRejectButtonFontWeight);
        font-style: var(--evgCookiesBannerRejectButtonFontStyle);
        line-height: var(--evgCookiesBannerRejectButtonFontLineHeight);
        color: var(--evgCookiesBannerRejectButtonFontColor);

        text-transform: var(--evgCookiesBannerRejectButtonFontCapitalization);
        text-decoration: var(--evgCookiesBannerRejectButtonDecorationTextDecoration);
        text-decoration-color: var(--evgCookiesBannerRejectButtonDecorationTextDecorationColor);
        border-radius: var(--evgCookiesBannerRejectButtonBorderRadius);
        border: 1px solid var(--evgCookiesBannerRejectButtonBorderColor);
        background: var(--evgCookiesBannerRejectButtonBackgroundColor);
        padding: var(--evgCookiesBannerRejectButtonPaddingVerticalPadding) 20px;

    }

    .evergreen-consent-banner-btn--reject:hover {
        color: var(--evgCookiesBannerRejectButtonFontHoverColor);
        text-decoration: var(--evgCookiesBannerRejectButtonDecorationTextDecorationHover);
        text-decoration-color: var(--evgCookiesBannerRejectButtonDecorationTextDecorationHoverColor);
        border-color: var(--evgCookiesBannerRejectButtonBorderHoverColor);
        background: var(--evgCookiesBannerRejectButtonBackgroundHoverColor);
    }

    .evergreen-consent-banner-btn--reject:focus {
        color: var(--evgCookiesBannerRejectButtonFontFocusColor);
        text-decoration: var(--evgCookiesBannerRejectButtonDecorationTextDecorationFocus);
        text-decoration-color: var(--evgCookiesBannerRejectButtonDecorationTextDecorationFocusColor);
        border-color: var(--evgCookiesBannerRejectButtonBorderFocusColor);
        background: var(--evgCookiesBannerRejectButtonBackgroundFocusColor);
    }

    .evergreen-consent-banner-btn--preference {
        display: inline-block;
        text-align: center;
        cursor: pointer;
        transition: all 0.3s ease-in-out;

        font-family: var(--evgCookiesBannerPreferenceButtonFontFamily);
        font-weight: var(--evgCookiesBannerPreferenceButtonFontWeight);
        font-style: var(--evgCookiesBannerPreferenceButtonFontStyle);
        line-height: var(--evgCookiesBannerPreferenceButtonFontLineHeight);
        color: var(--evgCookiesBannerPreferenceButtonFontColor);

        text-transform: var(--evgCookiesBannerPreferenceButtonFontCapitalization);
        text-decoration: var(--evgCookiesBannerPreferenceButtonDecorationTextDecoration);
        text-decoration-color: var(--evgCookiesBannerPreferenceButtonDecorationTextDecorationColor);
        border-radius: var(--evgCookiesBannerPreferenceButtonBorderRadius);
        border: 1px solid var(--evgCookiesBannerPreferenceButtonBorderColor);
        background: var(--evgCookiesBannerPreferenceButtonBackgroundColor);
        padding: var(--evgCookiesBannerPreferenceButtonPaddingVerticalPadding) 20px;

    }

    .evergreen-consent-banner-btn--preference:hover {
        color: var(--evgCookiesBannerPreferenceButtonFontHoverColor);
        text-decoration: var(--evgCookiesBannerPreferenceButtonDecorationTextDecorationHover);
        text-decoration-color: var(--evgCookiesBannerPreferenceButtonDecorationTextDecorationHoverColor);
        border-color: var(--evgCookiesBannerPreferenceButtonBorderHoverColor);
        background: var(--evgCookiesBannerPreferenceButtonBackgroundHoverColor);
    }

    .evergreen-consent-banner-btn--preference:focus {
        color: var(--evgCookiesBannerPreferenceButtonFontFocusColor);
        text-decoration: var(--evgCookiesBannerPreferenceButtonDecorationTextDecorationFocus);
        text-decoration-color: var(--evgCookiesBannerPreferenceButtonDecorationTextDecorationFocusColor);
        border-color: var(--evgCookiesBannerPreferenceButtonBorderFocusColor);
        background: var(--evgCookiesBannerPreferenceButtonBackgroundFocusColor);
    }

    /* Floating Manage Preferences button */
   .evergreen-consent-manage-btn {
        font-family: var(--evgCookiesFloatingButtonFontFamily);
        font-weight: var(--evgCookiesFloatingButtonFontWeight);
        font-style: var(--evgCookiesFloatingButtonFontStyle);
        line-height: var(--evgCookiesFloatingButtonLineHeight);
        color: var(--evgCookiesFloatingButtonFontColor);
        cursor: pointer;

        text-transform: var(--evgCookiesFloatingButtonCapitalization);
        text-decoration: var(--evgCookiesFloatingButtonTextDecoration);
        text-decoration-color: var(--evgCookiesFloatingButtonTextDecorationColor);
        border-radius: var(--evgCookiesFloatingButtonBorderRadius) 0 0 var(--evgCookiesFloatingButtonBorderRadius);
        border-color: var(--evgCookiesFloatingButtonBorderColor);
        background: var(--evgCookiesFloatingButtonBackgroundColor);
        padding: 20px var(--evgCookiesFloatingButtonVerticalPadding);
   }

    .evergreen-consent-manage-btn:hover {
        color: var(--evgCookiesFloatingButtonFontHoverColor);
        text-decoration: var(--evgCookiesFloatingButtonTextDecorationHover);
        text-decoration-color: var(--evgCookiesFloatingButtonTextDecorationHoverColor);
        border-color: var(--evgCookiesFloatingButtonBorderHoverColor);
        background: var(--evgCookiesFloatingButtonBackgroundHoverColor);
    }

    .evergreen-consent-manage-btn:focus {
        color: var(--evgCookiesFloatingButtonFontFocusColor);
        text-decoration: var(--evgCookiesFloatingButtonTextDecorationFocus);
        text-decoration-color: var(--evgCookiesFloatingButtonTextDecorationFocusColor);
        border-color: var(--evgCookiesFloatingButtonBorderFocusColor);
        background: var(--evgCookiesFloatingButtonBackgroundFocusColor);
    }

    /* Preferences Pane */
    .evergreen-consent-preference {
        background: var(--evgCookiesPaneBackgroundColor);
        font-family: var(--evgCookiesPaneBodyFontFamily);
        font-weight: var(--evgCookiesPaneBodyFontWeight);
        text-transform: var(--evgCookiesPaneBodyFontCapitalization);
        color: var(--evgCookiesPaneBodyFontColor);
        line-height: var(--evgCookiesPaneBodyFontLineHeight);
        box-sizing: border-box;

        a {
            color: var(--evgCookiesLinkColor);
            line-height: var(--evgCookiesLinkLineHeight);
            text-decoration: var(--evgCookiesLinkTextDecoration);
            text-decoration-color: var(--evgCookiesLinkTextDecorationColor);
        }

        a:hover {
           color: var(--evgCookiesLinkHoverColor);
            text-decoration: var(--evgCookiesLinkTextDecorationHover);
            text-decoration-color: var(--evgCookiesLinkTextDecorationHoverColor);
        }

        a:focus {
            color: var(--evgCookiesLinkFocusColor);
            text-decoration: var(--evgCookiesLinkTextDecorationFocus);
            text-decoration-color: var(--evgCookiesLinkTextDecorationFocusColor);
        }

        .evergreen-consent-preference-header {
            font-family: var(--evgCookiesPaneHeadingFontFamily);
            font-weight: var(--evgCookiesPaneHeadingFontWeight);
            text-transform: var(--evgCookiesPaneHeadingFontCapitalization);
            color: var(--evgCookiesPaneHeadingFontColor);
            line-height: var(--evgCookiesPaneHeadingFontLineHeight);
        }

        .evergreen-consent-subheader {
            font-family: var(--evgCookiesPaneSubheadingFontFamily);
            font-weight: var(--evgCookiesPaneSubheadingFontWeight);
            text-transform: var(--evgCookiesPaneSubheadingFontCapitalization);
            color: var(--evgCookiesPaneSubheadingFontColor);
            line-height: var(--evgCookiesPaneSubheadingFontLineHeight);
        }

        button.evergreen-consent-preference-btn.evergreen-consent-preference-btn--close {
            font-family: var(--evgCookiesPaneCloseButtonFontFamily);
            color: var(--evgCookiesPaneCloseButtonFontColor);
            font-weight: var(--evgCookiesPaneCloseButtonFontWeight);
            font-style: var(--evgCookiesPaneCloseButtonFontStyle);
            line-height: var(--evgCookiesPaneCloseButtonLineHeight);
            text-transform: var(--evgCookiesPaneCloseButtonFontCapitalization);
            text-decoration: var(--evgCookiesPaneCloseButtonDecorationTextDecoration);
            text-decoration-color: var(--evgCookiesPaneCloseButtonDecorationTextDecorationColor);
            border-radius: var(--evgCookiesPaneCloseButtonBorderRadius);
            border: 1px solid var(--evgCookiesPaneCloseButtonBorderColor);
            background: var(--evgCookiesPaneCloseButtonBackgroundColor);
            padding: var(--evgCookiesPaneCloseButtonPaddingVerticalPadding) 20px;
            cursor: pointer;
        }

        button.evergreen-consent-preference-btn.evergreen-consent-preference-btn--close:hover {
            color: var(--evgCookiesPaneCloseButtonFontHoverColor);
            text-decoration: var(--evgCookiesPaneCloseButtonDecorationTextDecorationHover);
            text-decoration-color: var(--evgCookiesPaneCloseButtonDecorationTextDecorationHoverColor);
            border-color: var(--evgCookiesPaneCloseButtonBorderHoverColor);
            background: var(--evgCookiesPaneCloseButtonBackgroundHoverColor);
        }

        button.evergreen-consent-preference-btn.evergreen-consent-preference-btn--close:focus {
            color: var(--evgCookiesPaneCloseButtonFontFocusColor);
            text-decoration: var(--evgCookiesPaneCloseButtonDecorationTextDecorationFocus);
            text-decoration-color: var(--evgCookiesPaneCloseButtonDecorationTextDecorationFocusColor);
            border-color: var(--evgCookiesPaneCloseButtonBorderFocusColor);
            background: var(--evgCookiesPaneCloseButtonBackgroundFocusColor);
        }

        .evergreen-consent-optional-action-btns {
            .evergreen-consent-optional-btn--reject {
                font-family: var(--evgCookiesBannerRejectButtonFontFamily);
                font-weight: var(--evgCookiesBannerRejectButtonFontWeight);
                font-style: var(--evgCookiesBannerRejectButtonFontStyle);
                line-height: var(--evgCookiesBannerRejectButtonFontLineHeight);
                color: var(--evgCookiesBannerRejectButtonFontColor);
                text-transform: var(--evgCookiesBannerRejectButtonFontCapitalization);
                text-decoration: var(--evgCookiesBannerRejectButtonDecorationTextDecoration);
                text-decoration-color: var(--evgCookiesBannerRejectButtonDecorationTextDecorationColor);
                border-radius: var(--evgCookiesBannerRejectButtonBorderRadius);
                border: 1px solid var(--evgCookiesBannerRejectButtonBorderColor);
                background: var(--evgCookiesBannerRejectButtonBackgroundColor);
                padding: var(--evgCookiesBannerRejectButtonPaddingVerticalPadding) 20px;
                cursor: pointer;
            }

            .evergreen-consent-optional-btn--accept {
                font-family: var(--evgCookiesBannerAcceptButtonFontFamily);
                font-weight: var(--evgCookiesBannerAcceptButtonFontWeight);
                font-style: var(--evgCookiesBannerAcceptButtonFontStyle);
                line-height: var(--evgCookiesBannerAcceptButtonFontLineHeight);
                color: var(--evgCookiesBannerAcceptButtonFontColor);
                text-transform: var(--evgCookiesBannerAcceptButtonFontCapitalization);
                text-decoration: var(--evgCookiesBannerAcceptButtonDecorationTextDecoration);
                text-decoration-color: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationColor);
                border-radius: var(--evgCookiesBannerAcceptButtonBorderRadius);
                border: 1px solid var(--evgCookiesBannerAcceptButtonBorderColor);
                background: var(--evgCookiesBannerAcceptButtonBackgroundColor);
                padding: var(--evgCookiesBannerAcceptButtonPaddingVerticalPadding) 20px;
                cursor: pointer;
            }

            .evergreen-consent-optional-btn--accept:hover {
                color: var(--evgCookiesBannerAcceptButtonFontHoverColor);
                text-decoration: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationHover);
                text-decoration-color: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationHoverColor);
                border-color: var(--evgCookiesBannerAcceptButtonBorderHoverColor);
                background: var(--evgCookiesBannerAcceptButtonBackgroundHoverColor);
            }

            .evergreen-consent-optional-btn--accept:focus {
                color: var(--evgCookiesBannerAcceptButtonFontFocusColor);
                text-decoration: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationFocus);
                text-decoration-color: var(--evgCookiesBannerAcceptButtonDecorationTextDecorationFocusColor);
                border-color: var(--evgCookiesBannerAcceptButtonBorderFocusColor);
                background: var(--evgCookiesBannerAcceptButtonBackgroundFocusColor);
            }

            .evergreen-consent-optional-btn--reject:hover {
                color: var(--evgCookiesBannerRejectButtonFontHoverColor);
                text-decoration: var(--evgCookiesBannerRejectButtonDecorationTextDecorationHover);
                text-decoration-color: var(--evgCookiesBannerRejectButtonDecorationTextDecorationHoverColor);
                border-color: var(--evgCookiesBannerRejectButtonBorderHoverColor);
                background: var(--evgCookiesBannerRejectButtonBackgroundHoverColor);
            }

            .evergreen-consent-optional-btn--reject:focus {
                color: var(--evgCookiesBannerRejectButtonFontFocusColor);
                text-decoration: var(--evgCookiesBannerRejectButtonDecorationTextDecorationFocus);
                text-decoration-color: var(--evgCookiesBannerRejectButtonDecorationTextDecorationFocusColor);
                border-color: var(--evgCookiesBannerRejectButtonBorderFocusColor);
                background: var(--evgCookiesBannerRejectButtonBackgroundFocusColor);
            }
        }

        .evergreen-consent-necessary {
            border-bottom: 1px solid var(--evgCookiesPaneLineSeparatorColor);

            .evergreen-consent-necessary-status {
                color: var(--evgCookiesPaneAlwaysActiveColor);
            }
        }

        .evergreen-consent-non-essential-opt-out {
            background: var(--evgCookiesPaneWarningBackgroundColor);
            border-color: var(--evgCookiesPaneWarningBorderColor);

            .evergreen-icon-warning-fill {
                color: var(--evgCookiesPaneWarningIconColor);
            }
        }

        .evergreen-consent-optional {
            .evergreen-consent-optional-status {
                color: var(--evgCookiesPaneAllRejectedColor);
            }

            .evergreen-consent-optional-status--accept-all {
                color: var(--evgCookiesPaneAllAcceptedColor);
            }

            .evergreen-consent-optional-status--accept-partial {
                color: var(--evgCookiesPaneSomeAcceptedColor);
            }
        }

        .evergreen-consent-non-essential-switch-checkbox {
            clip: initial;
        }

        .evergreen-consent-non-essential-switch-container--on {
            .evergreen-consent-non-essential-switch-checkbox[id*=switch-checkbox][type=checkbox]:checked+.evergreen-consent-non-essential-switch-knob::before {
                background: var(--evgCookiesPaneSwitchOnBackgroundColor);
            }
            .evergreen-consent-non-essential-switch-label {
               color: var(--evgCookiesPaneSwitchOnTextColor);
            }
        }

        .evergreen-consent-non-essential-switch-container--off {
            .evergreen-consent-non-essential-switch-checkbox[id*=switch-checkbox][type=checkbox]:not(checked)+.evergreen-consent-non-essential-switch-knob::before {
                background: var(--evgCookiesPaneSwitchOffBackgroundColor);
            };
            .evergreen-consent-non-essential-switch-label {
               color: var(--evgCookiesPaneSwitchOffTextColor);
            }
        }
    }
}

/** Responsive Desktop **/
@media (min-width: 1025px) {
    .evergreen-consent {
        .evergreen-consent-manage-btn {
            font-size: var(--evgCookiesFloatingButtonFontSizeL);
        }
        .evergreen-consent-banner {
            font-size: var(--evgCookiesBannerDescriptionFontSizeL);
        }
        .evergreen-consent-banner-header {
            font-size: var(--evgCookiesBannerHeadingFontSizeL);
        }
        .evergreen-consent-banner-text {
            a {
                font-size: var(--evgCookiesLinkFontSizeL);
            }
        }
        .evergreen-consent-banner-btn--accept {
            font-size: var(--evgCookiesBannerAcceptButtonFontSizeL);
        }
        .evergreen-consent-banner-btn--reject {
            font-size: var(--evgCookiesBannerRejectButtonFontSizeL);
        }
        .evergreen-consent-banner-btn--preference {
            font-size: var(--evgCookiesBannerPreferenceButtonFontSizeL);
        }

        .evergreen-consent-preference {
            font-size: var(--evgCookiesPaneBodyFontSizeL);

            a {
                font-size: var(--evgCookiesLinkFontSizeL);
            }

            .evergreen-consent-preference-header {
               font-size: var(--evgCookiesPaneHeadingFontSizeL);
            }

            .evergreen-consent-subheader {
                font-size: var(--evgCookiesPaneSubheadingFontSizeL);
            }

            button.evergreen-consent-preference-btn.evergreen-consent-preference-btn--close {
                font-size: var(--evgCookiesPaneCloseButtonFontSizeL);
            }

            .evergreen-consent-optional-action-btns {
                .evergreen-consent-optional-btn--reject {
                    font-size: var(--evgCookiesBannerRejectButtonFontSizeL);
                }

                .evergreen-consent-optional-btn--accept {
                    font-size: var(--evgCookiesBannerAcceptButtonFontSizeL);
                }
            }
        }
    }
}

/** Responsive Tablet **/
@media (max-width: 1024px){
    .evergreen-consent {
        .evergreen-consent-manage-btn {
            font-size: var(--evgCookiesFloatingButtonFontSizeM);
        }
        .evergreen-consent-banner {
            font-size: var(--evgCookiesBannerDescriptionFontSizeM);
        }
        .evergreen-consent-banner-header {
            font-size: var(--evgCookiesBannerHeadingFontSizeM);
        }
        .evergreen-consent-banner-text {
            a {
                font-size: var(--evgCookiesLinkFontSizeM);
            }
        }
        .evergreen-consent-banner-btn--accept {
            font-size: var(--evgCookiesBannerAcceptButtonFontSizeM);
        }
        .evergreen-consent-banner-btn--reject {
            font-size: var(--evgCookiesBannerRejectButtonFontSizeM);
        }
        .evergreen-consent-banner-btn--preference {
            font-size: var(--evgCookiesBannerPreferenceButtonFontSizeM);
        }


        .evergreen-consent-preference {
            font-size: var(--evgCookiesPaneBodyFontSizeM);

            a {
                font-size: var(--evgCookiesLinkFontSizeM);
            }

            .evergreen-consent-preference-header {
               font-size: var(--evgCookiesPaneHeadingFontSizeM);
            }

            .evergreen-consent-subheader {
                font-size: var(--evgCookiesPaneSubheadingFontSizeM);
            }

            button.evergreen-consent-preference-btn.evergreen-consent-preference-btn--close {
                font-size: var(--evgCookiesPaneCloseButtonFontSizeM);
            }

            .evergreen-consent-optional-action-btns {
                .evergreen-consent-optional-btn--reject {
                    font-size: var(--evgCookiesBannerRejectButtonFontSizeM);
                }
                .evergreen-consent-optional-btn--accept {
                    font-size: var(--evgCookiesBannerAcceptButtonFontSizeM);
                }
            }
        }
    }
}

/** Responsive Mobile **/
@media (max-width: 480px){
    .evergreen-consent {
        .evergreen-consent-manage-btn {
            font-size: var(--evgCookiesFloatingButtonFontSizeS);
        }
        .evergreen-consent-banner {
            font-size: var(--evgCookiesBannerDescriptionFontSizeS);
        }
        .evergreen-consent-banner-header {
            font-size: var(--evgCookiesBannerHeadingFontSizeS);
        }
        .evergreen-consent-banner-text {
            a {
                font-size: var(--evgCookiesLinkFontSizeS);
            }
        }
        .evergreen-consent-banner-btn--accept {
            font-size: var(--evgCookiesBannerAcceptButtonFontSizeS);
        }
        .evergreen-consent-banner-btn--reject {
            font-size: var(--evgCookiesBannerRejectButtonFontSizeS);
        }
        .evergreen-consent-banner-btn--preference {
            font-size: var(--evgCookiesBannerPreferenceButtonFontSizeS);
        }

        .evergreen-consent-preference {
            font-size: var(--evgCookiesPaneBodyFontSizeS);

            a {
                font-size: var(--evgCookiesLinkFontSizeS);
            }

            .evergreen-consent-preference-header {
               font-size: var(--evgCookiesPaneHeadingFontSizeS);
            }

            .evergreen-consent-subheader {
                font-size: var(--evgCookiesPaneSubheadingFontSizeS);
            }

            button.evergreen-consent-preference-btn.evergreen-consent-preference-btn--close {
                font-size: var(--evgCookiesPaneCloseButtonFontSizeS);
            }

            .evergreen-consent-optional-action-btns {
                .evergreen-consent-optional-btn--reject {
                    font-size: var(--evgCookiesBannerRejectButtonFontSizeS);
                }
                .evergreen-consent-optional-btn--accept {
                    font-size: var(--evgCookiesBannerAcceptButtonFontSizeS);
                }
            }
        }
    }
}/* Stock Summary */
.evergreen-stock-summary .evergreen-stock-summary-layout {
    --fontSize: var(--evgBodyFontSizeL);
    --fontFamily: var(--evgBodyFontFamily);
    --fontColor: var(--evgBodyFontColor);
    --fontWeight: var(--evgBodyFontWeight);
    --lineHeight: var(--evgBodyLineHeight);
    --capitalization: var(--evgBodyCapitalization);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--delay,
.evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--date-time-wrap {
    --fontSize: var(--evgCaptionFontSizeL);
    --fontFamily: var(--evgCaptionFontFamily);
    --fontColor: var(--evgCaptionFontColor);
    --fontWeight: var(--evgCaptionFontWeight);
    --lineHeight: var(--evgCaptionLineHeight);
    --capitalization: var(--evgCaptionCapitalization);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--delay-date-wrap .evergreen-stock-summary--divider,
.evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--date-time-wrap .evergreen-stock-summary--divider {
    --background: var(--evgCaptionFontColor);

    background: var(--background);
}

.evergreen-stock-summary .evergreen-stock-summary-layout.evergreen-stock-summary-layout--details .evergreen-stock-summary-price-wrap {
    border-top: 1px solid var(--evgModuleItemUnderlineColor);
    border-bottom: 1px solid var(--evgModuleItemUnderlineColor);
}

.evergreen-stock-summary .evergreen-stock-summary-layout.evergreen-stock-summary-layout--details .evergreen-stock-summary--volume {
    border-bottom: 1px solid var(--evgModuleItemUnderlineColor);
}

.evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary-item-separator {
    --lineColor: var(--evgModuleItemUnderlineColor);
}

.evergreen-stock-summary .evergreen-stock-summary-layout-wrap--details.evergreen-stock-summary-layout-wrap--tabbed .evergreen-stock-summary-tab-container {
    --background: var(--evgModuleBackgroundItemBackgroundColor);
}
.evergreen-stock-summary .evergreen-stock-summary-layout-wrap--details.evergreen-stock-summary-layout-wrap--tabbed .evergreen-stock-summary-layout {
    --background: none;
}

/** Responsive Desktop **/
@media (min-width: 1025px) {
    .evergreen-stock-summary .evergreen-stock-summary-layout {
        font-size: var(--evgBodyFontSizeL);
    }

    .evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--delay,
    .evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--date-time-wrap {
        --cellFontSize: var(--evgCaptionFontSizeL);
    }
}

/** Responsive Tablet **/
@media (min-width: 481px) and (max-width: 1024px){
    .evergreen-stock-summary .evergreen-stock-summary-layout {
        font-size: var(--evgBodyFontSizeM);
    }

    .evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--delay,
    .evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--date-time-wrap {
        --cellFontSize: var(--evgCaptionFontSizeM);
    }
}

/** Responsive Mobile **/
@media (max-width: 480px){
    .evergreen-stock-summary .evergreen-stock-summary-layout {
        font-size: var(--evgBodyFontSizeS);
    }

    .evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--delay,
    .evergreen-stock-summary .evergreen-stock-summary-layout .evergreen-stock-summary--date-time-wrap {
        --cellFontSize: var(--evgCaptionFontSizeS);
    }

   .evergreen-stock-summary .evergreen-stock-summary-layout.evergreen-stock-summary-layout--details .evergreen-stock-summary--delay {
        border-bottom: 1px solid var(--evgModuleItemUnderlineColor);
    }
}/* News */
.evergreen.evergreen-news {
    padding: 50px 0;
}

.evergreen-item.evergreen-news-item.evergreen-item-container .evergreen-news-item-wrap {
    .evergreen-news-item-headline-wrap {
        grid-area: headline;
    }

    .evergreen-news-attachments {
        grid-area: downlaod;
    }

    .evergreen-news-read-more-container {
        grid-area: read-more;
    }
}

.evergreen-item.evergreen-news-item.evergreen-item-container.evergreen-item-container--download-right .evergreen-news-item-wrap {
    display: grid;
    grid-template-columns: 1fr;
    grid-template-rows: 1fr;
    gap: 0;
    grid-template-areas:
        "headline downlaod"
        "read-more read-more";

    .evergreen-news-attachments {
        padding-left: 24px;
        gap: 0;
    }

    &.evergreen-news-item-data-center .evergreen-news-read-more-container {
        margin: 0 auto;
    }
}

.evergreen-item.evergreen-news-item.evergreen-item-container.evergreen-item-container--download-bottom .evergreen-news-item-wrap {
    display: grid;
    grid-template-columns: auto 1fr;
    grid-template-rows: auto;
    gap: 0;
    align-items: center;
    grid-template-areas:
        "headline headline"
        "read-more downlaod";

    .evergreen-news-attachments {
        padding-left: 8px;
    }

    &:not(:has(>.evergreen-news-attachments)),
    &:not(:has(>.evergreen-news-read-more-container)) {
        grid-template-areas:
            "headline headline"
            "single-line single-line";
        column-gap: 0;

        .evergreen-news-read-more-container,
        .evergreen-news-attachments {
            grid-area: single-line;
            justify-content: start;
            padding-left: 0;
        }
    }

    &.evergreen-news-item-data-center {
        grid-template-columns: 1fr 1fr;

        .evergreen-news-attachments {
            display: flex;
            justify-content: flex-start;
        }

        .evergreen-news-read-more-container {
            display: flex;
            justify-content: flex-end;
        }

        &:not(:has(>.evergreen-news-attachments)),
        &:not(:has(>.evergreen-news-read-more-container)) {
            .evergreen-news-read-more-container,
            .evergreen-news-attachments {
                justify-content: center;
            }
        }
    }
}

.evergreen.evergreen-news .evergreen-news-layout-wrapper.evergreen-news-layout--list-overlay {
    max-width: 1220px;
    margin: 0 auto;
    padding: 0;
    display: flex;
    align-items: center;
    justify-content: flex-end;
    min-height: 648px;
    width: auto;
    max-width: 1220px;
    position: relative;

    .evergreen-news-layout-overlay-background {
        min-height: 100%;
        max-width: 800px;
        width: auto;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        z-index: 1;
        background-position: center;
        background-size: cover;
        background-repeat: no-repeat;
    }

    .evergreen-container.evergreen-container--outer.evergreen-container--news {
        background: var(--evgLightColor);
        width: 100%;
        max-width: 850px;
        margin: 28px 0;
        background-color: rgb(255 255 255);
        border-radius: 4px;
        z-index: 2;
        padding: 50px;
        border-radius: 4px;
        box-shadow: 5px 5px 22px 4px rgba(62, 70, 81, 0.08),
                    12px 12px 17px 2px rgba(62, 70, 81, 0.08),
                    7px 7px 8px -4px rgba(62, 70, 81, 0.08);
    }

    .evergreen-header {
        gap: 16px;
    }


    .evergreen-container--news .evergreen-year-options {
        margin: 0;
    }

    .evergreen-news-date {
        margin-bottom: 8px;
    }

    .evergreen-header {
        margin-bottom: 32px;
    }

    .evergreen-item-container {
        margin: 0;
        padding: 0;
    }

    .evergreen-item.evergreen-news-item {
        border: none;

        .evergreen-news-item-wrap {
            padding-bottom: 24px;
            border-bottom: var(--borderBottom);
            border-bottom-style: var(--borderBottomStyle);
        }
    }

    .evergreen-item-container.evergreen-item-container--has-divider:not(:first-child) {
        padding-top: 24px;
    }

    .evergreen-item-container:first-child .evergreen-news-date {
        padding-top: 8px;
    }

    .evergreen-item-container.evergreen-item-container--has-padding {
        padding: 0 20px;
    }

    .evergreen-item-container.evergreen-item-container--no-padding {
        padding: 0;
    }

    .evergreen-news-item-wrap.evergreen-news-item-data-center {
        .evergreen-news-item-headline-wrap {
            text-align: left;
            margin: 0 auto;
        }
    }

    p.evergreen-news-message-no-items {
        min-height: 300px;
        display: flex;
        align-items: center;

        .evergreen-icon-warning-line {
            display: none;
        }

        .evergreen-news-message-no-items--text {
            --fontSize: var(--evgH3FontSizeL);
            --fontWeight: var(--evgH3FontWeight);
            --lineHeight: var(--evgH3LineHeight);
            --fontFamily: var(--evgModuleItemTitleFontFamily);
            --fontColor: var(--evgModuleItemTitleFontColor);

            display: block;
            margin: 0 auto;
            font-size: var(--fontSize);
            font-family: var(--fontFamily);
            color: var(--fontColor);
            font-weight: var(--fontWeight);
            line-height: var(--lineHeight);
        }
    }
}

/** Responsive **/
@media (max-width: 1024px) {
    .evergreen.evergreen-news .evergreen-news-layout-wrapper.evergreen-news-layout--list-overlay {
        margin: 50px 0;

        &:has(>.evergreen-container--has-padding) {
            margin: 50px 24px;
        }
    }
}

@media (min-width: 769px) and (max-width: 1024px) {
    .evergreen.evergreen-news .evergreen-news-layout-wrapper.evergreen-news-layout--list-overlay {
        min-height: 600px;

        .evergreen-news-layout-overlay-background {
            max-width: 808px
        }

        .evergreen-container.evergreen-container--outer.evergreen-container--news {
            max-width: 811px;
        }
    }
}

@media (max-width: 768px) {
    .evergreen.evergreen-news .evergreen-news-layout-wrapper.evergreen-news-layout--list-overlay {
        max-width: 721px;
        padding: 0 32px;
        flex-direction: column;
        justify-content: center;

        .evergreen-news-layout-overlay-background {
            height: 460px;
            min-height: 460px;
            width: 100%;
            left: 0;
            right: 0;
            margin: 0 auto;
        }

        .evergreen-container.evergreen-container--outer.evergreen-container--news {
            margin: 0 auto;
            position: relative;
            padding: 32px;

            &.evergreen-container-news--overlay-space {
                justify-content: flex-start;
                top: 88px;
            }
        }
    }
}

@media (min-width: 481px) and (max-width: 768px) {
    .evergreen.evergreen-news .evergreen-news-layout-wrapper.evergreen-news-layout--list-overlay {
        margin: 0;

        &:has(>.evergreen-container--has-padding) {
            margin: 0 24px;
        }

        .evergreen-container.evergreen-container--outer.evergreen-container--news {
            max-width: 811px;
        }
    }
}

@media (max-width: 480px) {
    .evergreen-item.evergreen-news-item.evergreen-item-container.evergreen-item-container--download-right .evergreen-news-item-wrap .evergreen-news-attachments{
        padding-left: 16px;
    }

    .evergreen.evergreen-news .evergreen-news-layout-wrapper.evergreen-news-layout--list-overlay {
        max-width: 448px;
        padding: 0 16px;

        .evergreen-news-layout-overlay-background {
            position: relative;
            height: 184px;
            min-height: 184px;
        }

        .evergreen-container.evergreen-container--outer.evergreen-container--news {
            margin: 0 auto;
            position: relative;

            &.evergreen-container-news--overlay-space {
                justify-content: flex-start;
                top: 88px;
            }
        }

        .evergreen-header {
            display: grid;
            grid-template-columns: 1fr;
            grid-template-rows: auto;
            grid-template-areas:
                "title rss"
                "all-news all-news";

            .evergreen-title {
                grid-area: title;
            }

            .evergreen-news-view-all-wrapper {
                grid-area: all-news;
            }

            .evergreen-rss-container {
                grid-area: rss;
            }

            .evergreen-news-view-all-link {
                width: 100%;
            }
        }
    }
}


/* Card */
.evergreen-card {
    --itemBackgroundColor: var(--evgModuleBackgroundItemBackgroundColor);
    --itemBackgroundHoverColor: var(--evgLightOverlayColor);
    --itemBackgroundFocusColor: var(--evgLightOverlayColor);
    --titleKeylineColor: var(--evgAltColor);
}

.evergreen-card-item-description {
    font-family: var(--fontFamily);
    font-size: var(--fontSize);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    color: var(--fontColor);
    text-transform: var(--capitalization);
}

.evergreen-card-item img {
    color: var(--fontColor);
}

/** Financial Accordion Module Card Header **/
.evergreen-financial-accordion-card-header {
    --fontSize: var(--evgH4FontSizeL);
    --fontFamily: var(--evgH4FontFamily);
    --fontColor: var(--evgH4FontColor);
    --fontWeight: var(--evgH4FontWeight);
    --lineHeight: var(--evgH4LineHeight);
    --capitalization: var(--evgH4Capitalization);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}


/** Responsive Tablet **/
@media (max-width: 1024px){
    .evergreen-card-item-description {
       --fontSize: var(--evgBodyFontSizeM);
    }

    .evergreen-card-item img {
        --fontSize: var(--evgH3FontSizeM);
    }
}

/** Responsive Mobile **/
@media (max-width: 480px){
    .evergreen-card-item-description {
        --fontSize: var(--evgBodyFontSizeS);
    }

    .evergreen-card-item img {
        --fontSize: var(--evgH3FontSizeS);
    }
}

.evergreen-card-c {
    --paddingTop: var(--evgCardPaddingTop);
    --paddingBottom: var(--evgCardPaddingBottom);
    --paddingLeft: var(--evgCardPaddingLeft);
    --paddingRight: var(--evgCardPaddingRight);

    --border: 5px solid;
    --borderColor: var(--evgCardBorderColor);

    --borderRadius: var(--evgCardBorderRadius);
    --backgroundColor: var(--evgCardBackgroundColor);

    --boxShadow: var(--evgCardDropShadow);
}

.evergreen-card-c:hover {
    --border: 5px solid;
    --borderColor: var(--evgCardBorderHoverColor);

    --backgroundColor: var(--evgCardBackgroundHoverColor);
    --boxShadow: var(--evgCardDropShadowHover);
}

.evergreen-card-c:focus {
    --border: 5px solid;
    --borderColor: var(--evgCardBorderActiveColor);

    --backgroundColor: var(--evgCardBackgroundActiveColor);
}
.evergreen-sitemap-nav ul li {
    list-style-type: none;  
}

.evergreen-sitemap-nav ul.level1 > li {
    padding: 20px;
}
.evergreen-sitemap-nav ul.level1 > li > .evergreen-link {
    font-family: var(--fontFamily);
    font-size: var(--evgLinkFontSizeL);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    font-style: var(--fontStyle);
    color: var(--fontColor);
}
.evergreen-sitemap-nav ul.level1 > li > .evergreen-link:hover {
    color: var(--fontColor);
}
.evergreen-sitemap-nav ul.level1 > li > .evergreen-link:focus, .evergreen-sitemap-nav ul.level1 > li > .evergreen-link:focus-visible {
    color: var(--fontColor);
}

.evergreen-sitemap-nav ul.level2 > li {
    padding: 10px 20px 10px 20px;
}
.evergreen-sitemap-nav ul.level2 > li > .evergreen-link {
    font-family: var(--fontFamily);
    font-size: var(--evgLinkFontSizeL);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    font-style: var(--fontStyle);
    color: var(--fontColor);
}
.evergreen-sitemap-nav ul.level2 > li > .evergreen-link:hover {
    color: var(--fontColor);
}
.evergreen-sitemap-nav ul.level2 > li > .evergreen-link:focus, .evergreen-sitemap-nav ul.level2 > li > .evergreen-link:focus-visible {
    color: var(--fontColor);
}

.evergreen-sitemap-nav ul.level3 > li {
    padding: 5px 20px 5px 20px;
}
.evergreen-sitemap-nav ul.level3 > li > .evergreen-link {
    font-family: var(--fontFamily);
    font-size: var(--evgLinkFontSizeL);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    font-style: var(--fontStyle);
    color: var(--fontColor);
}
.evergreen-sitemap-nav ul.level3 > li > .evergreen-link:hover {
    color: var(--fontColor);
}
.evergreen-sitemap-nav ul.level3 > li > .evergreen-link:focus, .evergreen-sitemap-nav ul.level3 > li > .evergreen-link:focus-visible {
    color: var(--fontColor);
}

.evergreen-sitemap-nav ul.level4 li {
    padding: 5px 20px 5px 20px;
}
.evergreen-sitemap-nav ul.level4 li > .evergreen-link {
    font-family: var(--fontFamily);
    font-size: var(--evgLinkFontSizeL);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    font-style: var(--fontStyle);
    color: var(--fontColor);
}

.evergreen-sitemap-nav ul.level4 li > .evergreen-link:hover {
    color: var(--fontColor);
}

.evergreen-sitemap-nav ul.level4 li > .evergreen-link:focus, .evergreen-sitemap-nav ul.level4 li > .evergreen-link:focus-visible {
    color: var(--fontColor);
}

.evergreen-header .evergreen-title .ModuleTitle {
    font-size: var(--evgBodyFontSizeL);
}


@media (min-width: 481px) and (max-width: 1024px){
    .evergreen-header .evergreen-title .ModuleTitle {
        font-size: var(--evgBodyFontSizeM);
    }

    .evergreen-sitemap-nav ul.level1 > li > .evergreen-link {
        font-size: var(--evgLinkFontSizeM);
    }

    .evergreen-sitemap-nav ul.level2 > li > .evergreen-link {
        font-size: var(--evgLinkFontSizeM);
    }

    .evergreen-sitemap-nav ul.level3 > li > .evergreen-link {
        font-size: var(--evgLinkFontSizeM);
    }

    .evergreen-sitemap-nav ul.level4 li > .evergreen-link {
        font-size: var(--evgLinkFontSizeM);
    }
}

@media (max-width: 480px){
    .evergreen-header .evergreen-title .ModuleTitle {
        font-size: var(--evgBodyFontSizeS);
    }

    .evergreen-sitemap-nav ul.level1 > li > .evergreen-link {
        font-size: var(--evgLinkFontSizeS);
    }

    .evergreen-sitemap-nav ul.level2 > li > .evergreen-link {
        font-size: var(--evgLinkFontSizeS);
    }

    .evergreen-sitemap-nav ul.level3 > li > .evergreen-link {
        font-size: var(--evgLinkFontSizeS);
    }

    .evergreen-sitemap-nav ul.level4 li > .evergreen-link {
        font-size: var(--evgLinkFontSizeS);
    }
}.evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container {
    .evergreen-sec-filings-details-type {
        font-family: var(--evgH3FontFamily);
        font-weight: var(--evgH3FontWeight);
        line-height: var(--evgH3LineHeight);
        text-transform: var(--evgH3Capitalization);
        color: var(--evgH3FontColor);
    }
    .evergreen-sec-filings-details-date {
        font-family: var(--evgDateTimeFontFamily);
        font-weight: var(--evgDateTimeFontWeight);
        line-height: var(--evgDateTimeFontLineHeight);
        text-transform: var(--evgDateTimeFontCapitalization);
        color: var(--evgDateTimeFontColor);
    }
    .evergreen-sec-filings-details-description {
        font-family: var(--evgBodyFontFamily);
        font-weight: var(--evgBodyFontWeight);
        line-height: var(--evgBodyLineHeight);
        text-transform: var(--evgBodyCapitalization);
        color: var(--evgBodyFontColor);
    }
    .evergreen-sec-filings-details-download-text {
        font-family: var(--evgBodyFontFamily);
        font-weight: var(--evgBodyFontWeight);
        line-height: var(--evgBodyLineHeight);
        text-transform: var(--evgBodyCapitalization);
        color: var(--evgBodyFontColor);
    }
}
.evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-download-links a i::before {
    font-weight: var(--evgHyperlinkFontWeight);
    color: var(--evgHyperlinkFontColor);
}
.evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-download-links a:hover i::before {
    color: var(--evgHyperlinkFontHoverColor);
}
.evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-download-links a:active i::before,
.evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-download-links a:focus i::before {
    color: var(--evgHyperlinkFontFocusColor);
}

@media (max-width: 480px) {
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-type {
        font-size: var(--evgH3FontSizeS);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-date {
        font-size: var(--evgDateTimeFontSizeS);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-description {
        font-size: var(--evgBodyFontSizeS);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-download-text {
        font-size: var(--evgBodyFontSizeS);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-download-links {
        font-size: var(--evgHyperlinkFontSizeS);
    }
}
@media (min-width: 481px) and (max-width: 1024px) {
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-type {
        font-size: var(--evgH3FontSizeM);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-date {
        font-size: var(--evgDateTimeFontSizeM);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-description {
        font-size: var(--evgBodyFontSizeM);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-download-text {
        font-size: var(--evgBodyFontSizeM);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-download-links {
        font-size: var(--evgHyperlinkFontSizeM);
    }
}
@media (min-width: 1025px) {
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-type {
        font-size: var(--evgH3FontSizeL);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-date {
        font-size: var(--evgDateTimeFontSizeL);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-description {
        font-size: var(--evgBodyFontSizeL);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-download-text {
        font-size: var(--evgBodyFontSizeL);
    }
    .evergreen.evergreen-sec-filings-details .evergreen-sec-filings-details-container .evergreen-sec-filings-details-download-links {
        font-size: var(--evgHyperlinkFontSizeL);
    }
}
.evergreen-data-figures-item {
    text-align: var(--alignment);
    grid-template-columns: repeat(var(--itemsPerRow), 1fr);
}

.evergreen-data-figures-item-title {
    font-size: var(--fontSize);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    font-family: var(--fontFamily);
}

.evergreen-data-figures-caption-text {
    text-align: var(--alignment);
}

.evergreen-data-figures-link {
    text-align: var(--alignment);
}

@media (min-width: 481px) and (max-width: 1024px){
    .evergreen-data-figures-item {
        text-align: var(--alignment);
        grid-template-columns: repeat(2, 1fr);
    }

    .evergreen-data-figures-item-title {
        font-size: var(--fontSize);
    }

    .evergreen-data-figures-item-description {
        font-size: var(--fontSize);
    }
}

@media (max-width: 480px){
    .evergreen-data-figures-item {
        text-align: var(--alignment);
        grid-template-columns: repeat(1, 1fr);
    }

    .evergreen-data-figures-item-title {
        font-size: var(--fontSize);
    }

    .evergreen-data-figures-item-description {
        font-size: var(--fontSize);
    }
}.evergreen-calendar {
    --borderRadius: var(--evgCalendarBorderRadius);
    --dayFontFamily: var(--evgCalendarDayFontFamily);
    --dayFontSizeL: var(--evgCalendarDayFontSizeL);
    --dayFontSizeM: var(--evgCalendarDayFontSizeM);
    --dayFontSizeS: var(--evgCalendarDayFontSizeS);
    --dayFontColor: var(--evgCalendarDayFontColor);
    --dayFontWeight: var(--evgCalendarDayFontWeight);
    --dayFontLineHeight: var(--evgCalendarDayFontLineHeight);
    --dayFontCapitalization: var(--evgCalendarDayFontCapitalization);
    --secondaryBackgroundAltColor: var(--evgCalendarSecondaryBackgroundAltColor);

    --legendFontFamily : var(--evgCalendarLegendFontFamily);
    --legendFontSizeL : var(--evgCalendarLegendFontSizeL);
    --legendFontSizeM : var(--evgCalendarLegendFontSizeM);
    --legendFontSizeS : var(--evgCalendarLegendFontSizeS);
    --legendFontColor : var(--evgCalendarLegendFontColor);
    --legendFontWeight : var(--evgCalendarLegendFontWeight);
    --legendFontLineHeight : var(--evgCalendarLegendFontLineHeight);
    --legendFontCapitalization: var(--evgCalendarLegendFontCapitalization);
    --dotPrimaryColor: var(--evgCalendarDotPrimaryColor);
    --dotSecondaryColor: var(--evgCalendarDotSecondaryColor);

    --fontFamily : var(--evgCalendarFontFamily);
    --fontSizeL : var(--evgCalendarFontSizeL);
    --fontSizeM : var(--evgCalendarFontSizeM);
    --fontSizeS : var(--evgCalendarFontSizeS);
    --fontColor : var(--evgCalendarFontColor);
    --fontAltColor : var(--evgCalendarFontAltColor);
    --fontHoverColor : var(--evgCalendarFontHoverColor);
    --fontFocusColor : var(--evgCalendarFontFocusColor);
    --fontWeight : var(--evgCalendarFontWeight);
    --fontDisabledColor: var(--evgCalendarFontDisabledColor);
    --borderColor: var(--evgCalendarBorderColor);
    --backgroundColor: var(--evgCalendarBackgroundColor);
    --backgroundHoverColor: var(--evgCalendarBackgroundHoverColor);
    --backgroundActiveColor: var(--evgCalendarBackgroundActiveColor);

    --secondaryFontFamily: var(--evgCalendarSecondaryFontFamily);
    --secondaryFontSizeL: var(--evgCalendarSecondaryFontSizeL);
    --secondaryFontSizeM: var(--evgCalendarSecondaryFontSizeM);
    --secondaryFontSizeS: var(--evgCalendarSecondaryFontSizeS);
    --secondaryFontColor: var(--evgCalendarSecondaryFontColor);
    --secondaryFontWeight: var(--evgCalendarSecondaryFontWeight);
    --secondaryFontLineHeight: var(--evgCalendarSecondaryFontLineHeight);
    --secondaryFontCapitalization: var(--evgCalendarSecondaryFontCapitalization);
    --secondaryBackgroundColor: var(--evgCalendarSecondaryBackgroundColor);
}

.evergreen-calendar-month-container,
.evergreen-calendar-month-year {
    background: var(--secondaryBackgroundColor);
    border-top-left-radius: var(--borderRadius);
    border-top-right-radius: var(--borderRadius);
}

.evergreen-calendar-month,
.evergreen-calendar-month-year > * {
    font-family: var(--secondaryFontFamily);
    font-size: var(--secondaryFontSizeL);
    color: var(--secondaryFontColor);
    font-weight: var(--secondaryFontWeight);
    line-height: var(--secondaryFontLineHeight);
    text-transform: var(--secondaryFontCapitalization);
}

.evergreen-calendar-week {
    background: var(--secondaryBackgroundAltColor);
}

.evergreen-calendar-day {
    color: var(--dayFontColor);
    font-family: var(--dayFontFamily);
    font-size: var(--dayFontSizeL);
    font-weight: var(--dayFontWeight);
    line-height: var(--dayFontLineHeight);
    text-transform: var(--dayFontCapitalization);
}

.evergreen-calendar-date-container,
.evergreen-calendar-dates {
    background: var(--backgroundColor);
    border-bottom-left-radius: var(--borderRadius);
    border-bottom-right-radius: var(--borderRadius);
}

.evergreen-calendar-date {
    border-color: var(--borderColor);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    font-size: var(--fontSizeL);
    font-family: var(--fontFamily);
}

.evergreen-calendar-date:hover {
    background: var(--backgroundHoverColor);
    color: var(--fontHoverColor);
}

.evergreen-calendar-date:focus {
    color: var(--fontFocusColor);
}

.evergreen-calendar-date:focus-visible {
    color: var(--fontFocusColor);
}

.evergreen-calendar-date--selected > span {
    background: var(--backgroundActiveColor);
    color: var(--fontAltColor);
}

.evergreen-calendar-date--inactive,
.evergreen-calendar-date--adjacent-month {
    color: var(--fontDisabledColor);
}

.evergreen-calendar-legend,
.evergreen-calendar-legend-container li.evergreen-calendar-legend {
    color: var(--legendFontColor);
    font-family: var(--legendFontFamily);
    font-size: var(--legendFontSizeL);
    font-weight: var(--legendFontWeight);
    line-height: var(--legendFontLineHeight);
    text-transform: var(--legendFontCapitalization);
}

.evergreen-calendar-legend-indicator--primary,
.evergreen-calendar-indicator--primary {
    background: var(--dotPrimaryColor);
}
.evergreen-calendar-legend-indicator--secondary,
.evergreen-calendar-indicator--secondary {
    background: var(--dotSecondaryColor);
}

@media (min-width: 481px) and (max-width: 768px) {

    .evergreen-calendar-month,
    .evergreen-calendar-month-year > * {
        font-size: var(--secondaryFontSizeM);
    }
    .evergreen-calendar-day {
        font-size: var(--dayFontSizeM);
    }
    .evergreen-calendar-date {
        font-size: var(--fontSizeM);
    }
    .evergreen-calendar-legend {
        font-size: var(--legendFontSizeM);
    }
}

@media (max-width: 480px){

    .evergreen-calendar-month,
    .evergreen-calendar-month-year > * {
        font-size: var(--secondaryFontSizeS);
    }
    .evergreen-calendar-day {
        font-size: var(--dayFontSizeS);
    }
    .evergreen-calendar-date {
        font-size: var(--fontSizeS);
    }
    .evergreen-calendar-legend {
        font-size: var(--legendFontSizeS);
    }

}
.evergreen,
.evergreen-layout {
    --fontSize: var(--evgBodyFontSizeL);
    --fontFamily: var(--evgBodyFontFamily);
    --fontColor: var(--evgBodyFontColor);
    --fontWeight: var(--evgBodyFontWeight);
    --lineHeight: var(--evgBodyLineHeight);
    --capitalization: var(--evgBodyCapitalization);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen-layout .evergreen-layout-header {
    position: relative;
    padding-top: var(--primaryNavigationModuleHeight);
}

.evergreen {
    padding: 50px 0;
    box-sizing: border-box;
}

.evergreen.evergreen-no-padding {
    padding: 0;
}

.evergreen p {
    --fontSize: var(--evgBodyFontSizeL);
    --fontFamily: var(--evgBodyFontFamily);
    --fontColor: var(--evgBodyFontColor);
    --fontWeight: var(--evgBodyFontWeight);
    --lineHeight: var(--evgBodyLineHeight);
    --capitalization: var(--evgBodyCapitalization);
}

.evergreen h1 {
    --fontSize: var(--evgH1FontSizeL);
    --fontFamily: var(--evgH1FontFamily);
    --fontColor: var(--evgH1FontColor);
    --fontWeight: var(--evgH1FontWeight);
    --lineHeight: var(--evgH1LineHeight);
    --capitalization: var(--evgH1Capitalization);
    overflow-wrap: anywhere;
}

.evergreen h2 {
    --fontSize: var(--evgH2FontSizeL);
    --fontFamily: var(--evgH2FontFamily);
    --fontColor: var(--evgH2FontColor);
    --fontWeight: var(--evgH2FontWeight);
    --lineHeight: var(--evgH2LineHeight);
    --capitalization: var(--evgH2Capitalization);
}

.evergreen h3 {
    --fontSize: var(--evgH3FontSizeL);
    --fontFamily: var(--evgH3FontFamily);
    --fontColor: var(--evgH3FontColor);
    --fontWeight: var(--evgH3FontWeight);
    --lineHeight: var(--evgH3LineHeight);
    --capitalization: var(--evgH3Capitalization);
}

.evergreen h4 {
    --fontSize: var(--evgH4FontSizeL);
    --fontFamily: var(--evgH4FontFamily);
    --fontColor: var(--evgH4FontColor);
    --fontWeight: var(--evgH4FontWeight);
    --lineHeight: var(--evgH4LineHeight);
    --capitalization: var(--evgH4Capitalization);
}

.evergreen h5 {
    --fontSize: var(--evgH5FontSizeL);
    --fontFamily: var(--evgH5FontFamily);
    --fontColor: var(--evgH5FontColor);
    --fontWeight: var(--evgH5FontWeight);
    --lineHeight: var(--evgH5LineHeight);
    --capitalization: var(--evgH5Capitalization);
}

.evergreen caption {
    --fontSize: var(--evgCaptionFontSizeL);
    --fontFamily: var(--evgCaptionFontFamily);
    --fontColor: var(--evgCaptionFontColor);
    --fontWeight: var(--evgCaptionFontWeight);
    --lineHeight: var(--evgCaptionLineHeight);
    --capitalization: var(--evgCaptionCapitalization);
}

.evergreen p,
.evergreen h1,
.evergreen h2,
.evergreen h3,
.evergreen h4,
.evergreen h5,
.evergreen caption {
    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen h1,
.evergreen h2,
.evergreen h3,
.evergreen h4,
.evergreen h5,
.evergreen caption {
    border-bottom: none;
}

.evergreen-container--outer {
    --padding: var(--evgPaddingContainerPadding);

    max-width: 1220px;
    margin-left: auto;
    margin-right: auto;
    padding-left: var(--padding);
    padding-right: var(--padding);
    margin-top: auto;
    margin-bottom: auto;
}

/* Two-ring focus outline (2px each) per Level Access: visible on light and dark backgrounds (e.g. breadcrumb). Uses currentColor so outline matches text and works when focus variables are not defined globally. */
.evergreen *:focus,
.evergreen *:focus-visible {
    outline: 2px solid currentColor;
    outline-offset: 2px;
    box-shadow: 0 0 0 2px var(--evgFocusRingLightColor, #fff);
}

.evergreen-error {
    --fontColor: var(--evgErrorColor);

    font-family: var(--fontFamily);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    font-weight: var(--fontWeight);
    color: var(--fontColor);
}

/* Footer */
.evergreen-layout .evergreen-pane.evergreen-pane--footer {
    --primaryColor: var(--evgFooterPrimaryColor);

    background: var(--primaryColor);
}

.evergreen-layout .evergreen-pane.evergreen-pane--sub-footer {
    --secondaryColor: var(--evgFooterSecondaryColor);

    background: var(--secondaryColor);
}

.evergreen .evergreen-checkbox label,
.evergreen .evergreen-radio label {
    --fontFamily: var(--evgRadioCheckboxFontFamily);
    --fontSize: var(--evgRadioCheckboxFontSizeL);
    --fontColor: var(--evgRadioCheckboxFontColor);
    --fontWeight: var(--evgRadioCheckboxFontWeight);
    --lineHeight: var(--evgRadioCheckboxFontLineHeight);
    --capitalization: var(--evgRadioCheckboxFontCapitalization);

    font-family: var(--fontFamily);
    font-size: var(--fontSize);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen .evergreen-checkbox input[type="checkbox"] {
    --fillColor: var(--evgRadioCheckboxFillColor);
    --borderColor: var(--evgRadioCheckboxBorderColor);
    --borderRadius: var(--evgRadioCheckboxBorderRadius);

    background: var(--fillColor);
    border: 1px solid var(--borderColor);
    border-radius: var(--borderRadius);
}

.evergreen .evergreen-checkbox input[type="checkbox"]:checked {
    --fillColor: var(--evgRadioCheckboxFillActiveColor);
    --borderColor: var(--evgRadioCheckboxBorderActiveColor);
    --borderRadius: var(--evgRadioCheckboxBorderRadius);

    background: var(--fillColor);
    border: 1px solid var(--borderColor);
    border-radius: var(--borderRadius);
}

.evergreen .evergreen-checkbox.evergreen-checkbox--checkmark input[type="checkbox"]:checked::before {
    --borderColor: var(--evgRadioCheckboxBorderColor);

    content: "";
    display: block;
    width: 38%;
    height: 85%;
    margin: -4% 25%;;
    border-bottom: 1px solid var(--borderColor);
    border-right: 1px solid var(--borderColor);
    -webkit-transform: rotate(45deg);
    transform: rotate(45deg);
}

.evergreen .evergreen-checkbox.evergreen-checkbox--square input[type="checkbox"]:checked::before {
    --borderColor: var(--evgRadioCheckboxBorderColor);

    content: "";
    display: block;
    width: 50%;
    height: 50%;
    margin: 25%;
    border: 1px solid var(--borderColor);
    background: var(--borderColor);
}

.evergreen .evergreen-radio input[type="radio"],
.evergreen .evergreen-radio input[type="checkbox"] {
    --fillColor: var(--evgRadioCheckboxSecondaryFillColor);
    --borderColor: var(--evgRadioCheckboxSecondaryBorderColor);

    -moz-appearance: none;
    -webkit-appearance: none;
    -o-appearance: none;
    appearance: none;
    margin: 0 10px 0 0;
    vertical-align: middle;
    display: inline-block;
    width: 12px;
    height: 12px;
    border-style: solid;
    border-width: 1px;
    cursor: pointer;
    border-radius: 100%;
    background: var(--fillColor);
    border-color: var(--borderColor);
}

.evergreen .evergreen-radio input[type="radio"]:checked {
    --fillColor: var(--evgRadioCheckboxSecondaryFillActiveColor);
    --borderColor: var(--evgRadioCheckboxSecondaryBorderActiveColor);

    background: var(--fillColor);
    border-color: var(--borderColor);
}

.evergreen .evergreen-radio.evergreen-radio--dot input[type="radio"]:checked::before {
    --borderColor: var(--evgRadioCheckboxSecondaryBorderColor);

    content: "";
    display: block;
    width: 60%;
    height: 60%;
    margin: 2px;
    border-radius: 50%;
    border: 1px solid var(--borderColor);
    background: var(--borderColor);
}

/* Hyperlink */
.evergreen .evergreen-link,
.evergreen.evergreen-text-editor a:not([class*="evergreen-button"]),
.evergreen a.evergreen-rss-link {
    --fontSize: var(--evgHyperlinkFontSizeL);
    --fontFamily: var(--evgHyperlinkFontFamily);
    --fontColor: var(--evgHyperlinkFontColor);
    --fontWeight: var(--evgHyperlinkFontWeight);
    --fontStyle: var(--evgHyperlinkFontStyle);
    --lineHeight: var(--evgHyperlinkFontLineHeight);
    --capitalization: var(--evgHyperlinkFontCapitalization);
    --textDecoration: var(--evgHyperlinkDecorationTextDecoration);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-style: var(--fontStyle);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);

    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);

    transition-property: color, text-decoration;
    transition-duration: 0.3s;
    transition-timing-function: ease-in-out;
}

.evergreen a.evergreen-rss-link {
    --fontSize: var(--evgModuleNameFontSizeL);
    --fontFamily: var(--evgModuleNameFontFamily);
    --fontWeight: var(--evgModuleNameFontWeight);
    --lineHeight: var(--evgModuleNameFontLineHeight);
    --alignment: var(--evgModuleNameFontAlignment);
}

.evergreen .evergreen-link:hover,
.evergreen.evergreen-text-editor a:not([class*="evergreen-button"]):hover,
.evergreen a.evergreen-rss-link:hover {
    --fontColor: var(--evgHyperlinkFontHoverColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationHover);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationHoverColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

.evergreen .evergreen-link:focus,
.evergreen .evergreen-link:focus-visible,
.evergreen.evergreen-text-editor a:not([class*="evergreen-button"]):focus,
.evergreen.evergreen-text-editor a:not([class*="evergreen-button"]):focus-visible,
.evergreen a.evergreen-rss-link:focus,
.evergreen a.evergreen-rss-link:focus-visible {
    --fontColor: var(--evgHyperlinkFontFocusColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationFocus);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationFocusColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);

}

/* Shared/Default Button Props */
.evergreen [class*="evergreen-button"],
.evergreen [class*="evergreen-link--button"],
.evergreen [class^="button"] {
    --fontSize: var(--evgButtonFontSizeL);
    --fontFamily: var(--evgButtonFontFamily);
    --fontColor: var(--evgButtonFontColor);
    --fontWeight: var(--evgButtonFontWeight);
    --lineHeight: var(--evgButtonFontLineHeight);
    --capitalization: var(--evgButtonFontCapitalization);

    --fontStyle: var(--evgButtonFontStyle);
    --textDecoration: var(--evgButtonDecorationTextDecoration);
    --textDecorationColor: var(--evgButtonDecorationTextDecorationColor);

    --borderRadius: var(--evgButtonBorderRadius);
    --borderColor: var(--evgButtonBorderColor);

    --backgroundColor: var(--evgButtonBackgroundColor);

    --topBottomPadding: var(--evgButtonPaddingVerticalPadding);
}

.evergreen [class*="evergreen-button"]:hover,
.evergreen [class*="evergreen-link--button"]:hover,
.evergreen [class^="button"]:hover {
    --fontColor: var(--evgButtonFontHoverColor);
    --borderColor: var(--evgButtonBorderHoverColor);
    --backgroundColor: var(--evgButtonBackgroundHoverColor);
    --textDecoration: var(--evgButtonDecorationTextDecorationHover);
    --textDecorationColor: var(--evgButtonDecorationTextDecorationHoverColor);

    color: var(--fontColor);
}

.evergreen [class*="evergreen-button"]:focus,
.evergreen [class*="evergreen-link--button"]:focus,
.evergreen [class^="button"]:focus,
.evergreen [class*="evergreen-button"]:focus-visible,
.evergreen [class*="evergreen-link--button"]:focus-visible,
.evergreen [class^="button"]:focus-visible {
    --fontColor: var(--evgButtonFontFocusColor);
    --borderColor: var(--evgButtonBorderFocusColor);
    --backgroundColor: var(--evgButtonBackgroundFocusColor);
    --textDecoration: var(--evgButtonDecorationTextDecorationFocus);
    --textDecorationColor: var(--evgButtonDecorationTextDecorationFocusColor);

    color: var(--fontColor);
}

/* Alt Button */
.evergreen .button--alt,
.evergreen .evergreen-button--alt,
.evergreen a.evergreen-link--button--alt,
.evergreen a.evergreen-link--button-alt {
    --fontSize: var(--evgButtonAltFontSizeL);
    --fontFamily: var(--evgButtonAltFontFamily);
    --fontColor: var(--evgButtonAltFontColor);
    --fontWeight: var(--evgButtonAltFontWeight);
    --lineHeight: var(--evgButtonAltFontLineHeight);
    --capitalization: var(--evgButtonAltFontCapitalization);

    --fontStyle: var(--evgButtonAltFontStyle);
    --textDecoration: var(--evgButtonAltDecorationTextDecoration);
    --textDecorationColor: var(--evgButtonAltDecorationTextDecorationColor);

    --borderRadius: var(--evgButtonAltBorderRadius);
    --borderColor: var(--evgButtonAltBorderColor);

    --backgroundColor: var(--evgButtonAltBackgroundColor);

    --topBottomPadding: var(--evgButtonAltPaddingVerticalPadding);
}

.evergreen .button--alt:hover:not(:focus),
.evergreen .evergreen-button--alt:hover:not(:focus),
.evergreen a.evergreen-link--button--alt:hover:not(:focus),
.evergreen a.evergreen-link--button-alt:hover:not(:focus) {
    --fontColor: var(--evgButtonAltFontHoverColor);
    --borderColor: var(--evgButtonAltBorderHoverColor);
    --backgroundColor: var(--evgButtonAltBackgroundHoverColor);
    --textDecoration: var(--evgButtonAltDecorationTextDecorationHover);
    --textDecorationColor: var(--evgButtonAltDecorationTextDecorationHoverColor);

    color: var(--fontColor);
}

.evergreen [class*="evergreen-button--alt"]:focus,
.evergreen [class*="evergreen-link--button-alt"]:focus,
.evergreen [class*="evergreen-link--button--alt"]:focus,
.evergreen [class*="button--alt"]:focus,
.evergreen [class*="evergreen-button--alt"]:focus-visible,
.evergreen [class*="evergreen-link--button-alt"]:focus-visible,
.evergreen [class*="evergreen-link--button--alt"]:focus-visible,
.evergreen [class*="button--alt"]:focus-visible {
    --fontColor: var(--evgButtonAltFontFocusColor);
    --borderColor: var(--evgButtonAltBorderFocusColor);
    --backgroundColor: var(--evgButtonAltBackgroundFocusColor);
    --textDecoration: var(--evgButtonAltDecorationTextDecorationFocus);
    --textDecorationColor: var(--evgButtonAltDecorationTextDecorationFocusColor);

    color: var(--fontColor);
}

/* Button Prop application */
.evergreen [class*="evergreen-button"],
.evergreen [class*="evergreen-link--button"],
.evergreen [class^="button"] {
    padding: var(--topBottomPadding) 20px;
    font-style: var(--fontStyle);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
    border-radius: var(--borderRadius);
    background: var(--backgroundColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);

    display: inline-block;
    text-align: center;
    min-width: 165px;
    max-width: 100%;
    border: 1px solid var(--borderColor);
    cursor: pointer;
    transition: all 0.3s ease-in-out;
}

.evergreen .evergreen-icon-button::before {
    font-size: var(--evgButtonFontSizeL);
    color: var(--evgButtonFontColor);
    border: 1px solid var(--evgButtonBorderColor);
    background: var(--evgButtonBackgroundColor);
    border-radius: 50%;
    cursor: pointer;
    padding: 16px;
}

.evergreen-icon-button .evergreen-icon-button--alt::before {
    font-size: var(--evgButtonAltFontSizeL);
    color: var(--evgButtonAltFontColor);
    border: 1px solid var(--evgButtonAltBorderColor);
    background: var(--evgButtonAltBackgroundColor);
    border-radius: 50%;
    cursor: pointer;
    padding: 16px;
}

/* HOVER */
.evergreen [class*="evergreen-button"]:hover,
.evergreen [class*="evergreen-link--button"]:hover,
.evergreen [class*="button"]:hover {
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

.evergreen-icon-button:hover::before {
    color: var(--evgButtonFontHoverColor);
    border: 1px solid var(--evgButtonBorderHoverColor);
    background: var(--evgButtonBackgroundHoverColor);
}

.evergreen-icon-button .evergreen-icon-button--alt:hover::before {
    color: var(--evgButtonAltFontHoverColor);
    border: 1px solid var(--evgButtonAltBorderHoverColor);
    background: var(--evgButtonAltBackgroundHoverColor);
}

/* FOCUS */
.evergreen [class*="evergreen-button"]:focus,
.evergreen [class*="evergreen-link--button"]:focus,
.evergreen [class*="button"]:focus,
.evergreen [class*="evergreen-button"]:focus-visible,
.evergreen [class*="evergreen-link--button"]:focus-visible,
.evergreen [class*="button"]:focus-visible {
    outline-color: var(--outlineFocusColor, var(--borderColor));
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

.evergreen-icon-button:focus::before, .evergreen-icon-button:focus-visible::before {
    color: var(--evgButtonFontFocusColor);
    border: 1px solid var(--evgButtonBorderFocusColor);
    background: var(--evgButtonBackgroundFocusColor);
}

.evergreen-icon-button .evergreen-icon-button--alt:focus::before,
.evergreen-icon-button .evergreen-icon-button--alt:focus-visible::before {
    color: var(--evgButtonAltFontFocusColor);
    border: 1px solid var(--evgButtonAltBorderFocusColor);
    background: var(--evgButtonAltBackgroundFocusColor);
}

/* Dropdown */
.evergreen .evergreen-dropdown-wrapper {
    --fontSize: var(--evgDropdownFontSizeL);
    --fontFamily: var(--evgDropdownFontFamily);
    --fontColor: var(--evgDropdownFontColor);
    --fontWeight: var(--evgDropdownFontWeight);
    --fontStyle: var(--evgDropdownFontStyle);
    --capitalization: var(--evgDropdownFontCapitalization);
    --borderRadius: var(--evgDropdownBorderRadius);
    --borderColor: var(--evgDropdownBorderColor);
    --backgroundColor: var(--evgDropdownBackgroundColor);
    --lineHeight: var(--evgDropdownFontLineHeight);
}

.evergreen .evergreen-dropdown {
    border-radius: var(--borderRadius);
    border-color: var(--borderColor);
    background: var(--backgroundColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);

    cursor: pointer;
    transition: all 0.3s ease-in-out;
    padding: 8px 48px 8px 16px;
    appearance: none;
    min-width: 90px;
}

.evergreen .evergreen-dropdown:focus,
.evergreen .evergreen-dropdown:focus-visible {
    --fontColor: var(--evgDropdownFontFocusColor);
    --borderColor: var(--evgDropdownBorderFocusColor);
    --backgroundColor: var(--evgDropdownBackgroundFocusColor);

    outline-color: var(--borderColor);
}

.evergreen .evergreen-dropdown-wrapper select:empty {
    display: block;
}


/* Accordion */
.evergreen .evergreen-accordion {
    --fontFamily: var(--evgAccordionFontFamily);

    --detailFontColor: var(--evgAccordionContentFontColor);
    --detailBackgroundColor: var(--evgAccordionContentBackgroundColor);

    --headingFontSize: var(--evgAccordionFontSizeL);
    --headingFontColor: var(--evgAccordionFontColor);
    --headingFontActiveColor: var(--evgAccordionFontAltColor);
    --headingFontFocusColor: var(--evgAccordionFontFocusColor);
    --headingFontWeight: var(--evgAccordionFontWeight);
    --headingFontStyle: var(--evgAccordionFontStyle);
    --headingFontLineHeight: var(--evgAccordionFontLineHeight);
    --headingFontCapitalization: var(--evgAccordionFontCapitalization);

    --headingPadding: var(--evgAccordionPaddingItemPadding);

    --subtitleFontSize: var(--evgAccordionSecondaryFontSizeL);
    --subtitleFontColor: var(--evgAccordionSecondaryFontColor);
    --subtitleFontWeight: var(--evgAccordionSecondaryFontWeight);
    --subtitleFontStyle: var(--evgAccordionSecondaryFontStyle);
    --subtitleFontLineHeight: var(--evgAccordionSecondaryFontLineHeight);
    --subtitleFontCapitalization: var(--evgAccordionSecondaryFontCapitalization);
    --subtitleFontActiveColor: var(--evgAccordionSecondaryFontAltColor);

    --borderColor: var(--evgAccordionBorderColor);
    --borderColorHover: var(--evgAccordionBorderHoverColor);
    --borderColorFocus: var(--evgAccordionBorderFocusColor);
    --borderColorActive: var(--evgAccordionBorderActiveColor);
    --borderRadius: var(--evgAccordionBorderRadius);

    --backgroundColor: var(--evgAccordionBackgroundColor);
    --backgroundColorFocus: var(--evgAccordionBackgroundFocusColor);
    --backgroundColorActive: var(--evgAccordionBackgroundActiveColor);

    padding: 0;
    border-top: 1px solid var(--borderColor);
    border-radius: var(--borderRadius);
}

.evergreen .evergreen-accordion .evergreen-accordion-content-text {
    --borderRadius: var(--evgAccordionBorderRadius);

    border-radius: var(--borderRadius);
}

.evergreen .evergreen-accordion img {
    --borderRadius: var(--evgAccordionBorderRadius);

    border-radius: var(--borderRadius);
}

.evergreen .evergreen-accordion:last-child {
    border-bottom: 1px solid var(--borderColor);
}

.evergreen .evergreen-accordion:not(.evergreen-accordion--active):focus-within {
    --borderColor: var(--borderColorFocus);
    --backgroundColor: var(--backgroundColorFocus);
}

.evergreen .evergreen-accordion:not(.evergreen-accordion--active):focus-within + .evergreen-accordion {
    --borderTopColor: var(--borderColorFocus);
}

.evergreen .evergreen-accordion:last-child:not(.evergreen-accordion--active):focus-within {
    --borderBottomColor: var(--borderColorFocus);
}

.evergreen .evergreen-accordion--active {
    --borderColor: var(--borderColorActive);
    --backgroundColor: var(--backgroundColorActive);
}

.evergreen .evergreen-accordion--active + .evergreen-accordion:not(.evergreen-accordion--active),
.evergreen .evergreen-accordion--active + .evergreen-accordion:focus-within:not(.evergreen-accordion--active) {
    --borderTopColor: var(--borderColorActive);
}

.evergreen .evergreen-accordion--active.evergreen-accordion:last-child:focus-within {
    --borderBottomColor: var(--borderColorActive);
}

.evergreen .evergreen-accordion .evergreen-accordion-header button.accordion-toggle {
    padding: var(--headingPadding) 0;
}

.evergreen .evergreen-accordion .evergreen-accordion-header,
.evergreen .evergreen-accordion .evergreen-accordion-header button.accordion-toggle {
    --borderRadius: var(--evgAccordionBorderRadius);
    --backgroundColor: var(--evgAccordionBackgroundColor);

    border-radius: var(--borderRadius);
    background: var(--backgroundColor);
}

.evergreen .evergreen-accordion .evergreen-accordion-header .accordion-toggle-icon,
.evergreen .evergreen-accordion .evergreen-accordion-header .evergreen-accordion-title {
    --fontSize: var(--headingFontSize);
    --fontFamily: var(--evgAccordionFontFamily);
    --fontColor: var(--headingFontColor);
    --fontWeight: var(--headingFontWeight);
    --fontStyle: var(--headingFontStyle);
    --lineHeight: var(--headingFontLineHeight);
    --capitalization: var(--headingFontCapitalization);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    font-style: var(--fontStyle);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    margin: 0;
}

.evergreen .evergreen-accordion:not(.evergreen-accordion--active):focus-within .evergreen-accordion-header .evergreen-accordion-title {
    --fontColor: var(--headingFontFocusColor);
    color: var(--fontColor);
}

.evergreen .evergreen-accordion--active .evergreen-accordion-header,
.evergreen .evergreen-accordion--active .evergreen-accordion-header button.accordion-toggle {
    --borderRadius: var(--evgAccordionBorderRadius);
    --backgroundColor: var(--evgAccordionBackgroundActiveColor);

    border-radius: var(--borderRadius);
    background-color: var(--backgroundColor);
    margin-bottom: 4px;
}

.evergreen .evergreen-accordion--active .evergreen-accordion-header .accordion-toggle-icon,
.evergreen .evergreen-accordion--active .evergreen-accordion-header .evergreen-accordion-title {
    --fontColor: var(--headingFontActiveColor);
    color: var(--fontColor);
}

.evergreen .evergreen-accordion .evergreen-accordion-header button.accordion-toggle:focus,
.evergreen .evergreen-accordion .evergreen-accordion-header button.accordion-toggle:focus-visible {
    outline: 2px solid currentColor;
    outline-offset: 2px;
    box-shadow: 0 0 0 2px var(--evgFocusRingLightColor, #fff);
}

.evergreen .evergreen-accordion .evergreen-accordion-header button.accordion-toggle .evergreen-accordion-subtitle {
    --fontSize: var(--subtitleFontSize);
    --fontColor: var(--subtitleFontColor);
    --fontWeight: var(--subtitleFontWeight);
    --fontStyle: var(--subtitleFontStyle);
    --lineHeight: var(--subtitleFontLineHeight);
    --capitalization: var(--subtitleFontCapitalization);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    font-style: var(--fontStyle);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen .evergreen-accordion--active .evergreen-accordion-header button.accordion-toggle .evergreen-accordion-subtitle {
    --fontColor: var(--subtitleFontActiveColor);
    color: var(--fontColor);
}

.evergreen .evergreen-accordion-content {
    --fontColor: var(--detailFontColor);
    --fontSize: var(--evgBodyFontSizeL);
    --backgroundColor: var(--detailBackgroundColor);
    --borderRadius: var(--evgAccordionBorderRadius);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);

    background: var(--backgroundColor);
    border-radius: var(--borderRadius);
}

.evergreen .evergreen-accordion-content-text,
.evergreen .evergreen-accordion-content-text p {
    font-size: var(--fontSize);
    color: var(--fontColor);
}

.evergreen .evergreen-accordion-content-text p a,
.evergreen .evergreen-accordion-content-text a:not([class*="evergreen-link--button"]) {
    --fontColor: var(--evgHyperlinkFontColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecoration);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationColor);
    --fontWeight: var(--evgHyperlinkFontWeight);
    --capitalization: var(--evgHyperlinkFontCapitalization);

    color: var(--fontColor);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
    font-weight: var(--fontWeight);
    text-transform: var(--capitalization);

    transition-property: color, text-decoration;
    transition-duration: 0.3s;
    transition-timing-function: ease-in-out;
}

.evergreen .evergreen-accordion-content-text p a:hover,
.evergreen .evergreen-accordion-content-text a:not([class*="evergreen-link--button"]):hover {
    --fontColor: var(--evgHyperlinkFontHoverColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationHover);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationHoverColor);

    color: var(--fontColor);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

.evergreen .evergreen-accordion-content-text p a:focus,
.evergreen .evergreen-accordion-content-text a:not([class*="evergreen-link--button"]):focus {
    --fontColor: var(--evgHyperlinkFontFocusColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationFocus);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationFocusColor);

    color: var(--fontColor);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

/* Carousel */
.evergreen .evergreen-carousel-slider-item-text {
    --fontColor: var(--evgBodyFontColor);
    --fontSize: var(--evgBodyFontSizeL);

    color: var(--fontColor);
    font-size: var(--fontSize);
}

.evergreen .evergreen-carousel-display-item-header-text {
    --fontColor: var(--evgBodyFontColor);
    --fontSize: var(--evgH3FontSizeL);

    color: var(--fontColor);
    font-size: var(--fontSize);
}

.evergreen .evergreen-carousel-display-item-subtitle-text,
.evergreen .evergreen-carousel-display-item-text,
.evergreen .evergreen-carousel-display-item-text p {
    --fontColor: var(--evgBodyFontColor);
    --fontSize: var(--evgBodyFontSizeL);

    color: var(--fontColor);
    font-size: var(--fontSize);
}

.evergreen .evergreen-carousel-arrow,
.evergreen .evergreen-carousel-display-item-text a,
.evergreen .evergreen-carousel-display-item-text p a {
    --fontColor: var(--evgHyperlinkFontColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecoration);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationColor);
    --fontWeight: var(--evgHyperlinkFontWeight);
    --capitalization: var(--evgHyperlinkFontCapitalization);

    color: var(--fontColor);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
    font-weight: var(--fontWeight);
    text-transform: var(--capitalization);
    transition-property: color, text-decoration;
    transition-duration: 0.3s;
    transition-timing-function: ease-in-out;
}

.evergreen .evergreen-carousel-arrow:hover,
.evergreen .evergreen-carousel-display-item-text a:hover,
.evergreen .evergreen-carousel-display-item-text p a:hover {
    --fontColor: var(--evgHyperlinkFontHoverColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationHover);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationHoverColor);

    color: var(--fontColor);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

.evergreen .evergreen-carousel-arrow:focus,
.evergreen .evergreen-carousel-display-item-text a:focus,
.evergreen .evergreen-carousel-display-item-text p a:focus {
    --fontColor: var(--evgHyperlinkFontFocusColor);
    --textDecoration: var(--evgHyperlinkDecorationTextDecorationFocus);
    --textDecorationColor: var(--evgHyperlinkDecorationTextDecorationFocusColor);
    color: var(--fontColor);
    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}


/* Tabs */
.evergreen .evergreen-tabs {
    --fontSize: var(--evgTabsFontSizeL);
    --fontFamily: var(--evgTabsFontFamily);
    --fontColor: var(--evgTabsFontColor);
    --fontColorHover: var(--evgTabsFontHoverColor);
    --fontColorActive: var(--evgTabsFontAltColor);
    --fontWeight: var(--evgTabsFontWeight);
    --lineHeight: var(--evgTabsFontLineHeight);
    --capitalization: var(--evgTabsFontCapitalization);
    --backgroundColor: var(--evgTabsBackgroundColor);
    --itemBackgroundColor: var(--evgTabsSecondaryBackgroundColor);
    --itemBackgroundColorHover: var(--evgTabsSecondaryBackgroundHoverColor);
    --itemBackgroundColorActive: var(--evgTabsSecondaryBackgroundActiveColor);
    --borderRadius: var(--evgTabsBorderRadius);
    --borderColor: var(--evgTabsBorderColor);
    --borderColorHover: var(--evgTabsBorderHoverColor);
    --borderColorActive: var(--evgTabsBorderActiveColor);

    margin-bottom: 16px;
    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen .evergreen-tabs ul {
    --padding: var(--evgTabsContainerPaddingTop) var(--evgTabsContainerPaddingLeftRight) 0;
    --columnGap: var(--evgTabsTabGaps);

    background: var(--backgroundColor);
    border: 0 none;
    padding: var(--padding);
    list-style: none;
    display: flex;
    column-gap: var(--columnGap);
    margin: 0;
    flex-wrap: wrap;
}

.evergreen .evergreen-tabs li {
    --bulletStyle: none;
    list-style: none;
    margin: 0;
    padding: 0;
    overflow-wrap: anywhere;
}

.evergreen .evergreen-tabs ul li a {
    --fontSize: var(--evgTabsFontSizeL);
    --fontFamily: var(--evgTabsFontFamily);
    --fontColor: var(--evgTabsFontColor);
    --fontColorHover: var(--evgTabsFontHoverColor);
    --fontColorActive: var(--evgTabsFontAltColor);
    --fontWeight: var(--evgTabsFontWeight);
    --lineHeight: var(--evgTabsFontLineHeight);
    --capitalization: var(--evgTabsFontCapitalization);
    --backgroundColor: var(--itemBackgroundColor);
    --borderColor: var(--evgTabsBorderColor);
    --tabLinkBorderRadius: var(--borderRadius) var(--borderRadius) 0 0;

    color: var(--fontColor);
    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
    background: var(--backgroundColor);
    display: inline-block;
    border-radius: var(--tabLinkBorderRadius);
    border: 1px solid var(--borderColor);
    padding: 10px 15px 5px;
    transition: all 0.3s ease-in-out;
    cursor: pointer;
}

.evergreen .evergreen-tabs ul li a:not(.evergreen--selected):hover {
    --fontColor: var(--fontColorHover);
    --backgroundColor: var(--itemBackgroundColorHover);
    --borderColor: var(--borderColorHover);

    color: var(--fontColor);
    background: var(--backgroundColor);
    border: 1px solid var(--borderColor);
}

.evergreen .evergreen-tabs ul li a.evergreen--selected,
.evergreen .evergreen-tabs ul li a.evergreen-active {
    --fontColor: var(--fontColorActive);
    --backgroundColor: var(--itemBackgroundColorActive);
    --borderColor: var(--borderColorActive);
    pointer-events: none;
    cursor: default;

    color: var(--fontColor);
    background: var(--backgroundColor);
    border: 1px solid var(--borderColor);
}

/* List */
.evergreen ul:not(.evergreen-styleless-list),
.evergreen ol:not(.evergreen-styleless-list) {
    --bulletStyle: var(--evgListBulletStyle);
    --bulletcolor: var(--evgListBulletColor);
    --fontFamily: var(--evgListFontFamily);
    --fontSize: var(--evgListFontSizeL);
    --fontColor: var(--evgListFontColor);
    --fontWeight: var(--evgListFontWeight);
    --fontStyle: var(--evgListFontStyle);
    --lineHeight: var(--evgListFontLineHeight);
    --capitalization: var(--evgListFontCapitalization);
    --textDecoration: var(--evgListDecorationTextDecoration);
    --textDecorationColor: var(--evgListDecorationTextDecorationColor);
}

.evergreen ul:not(.evergreen-styleless-list) li,
.evergreen ol:not(.evergreen-styleless-list) li {
    color: var(--fontColor);
    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-weight: var(--fontWeight);
    font-style: var(--fontStyle);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);

    text-decoration: var(--textDecoration);
    text-decoration-color: var(--textDecorationColor);
}

.evergreen ul:not(.evergreen-styleless-list) li {
    list-style: var(--bulletStyle);
}

.evergreen ul li::marker,
.evergreen ol li::marker {
    color: var(--bulletcolor);
}

/* Pager */
.evergreen .evergreen-pager,
.evergreen .evergreen-pager .evergreen-pager-list,
.evergreen .evergreen-pager .evergreen-pager-list-item {
  --fontFamily: var(--evgPaginationFontFamily);
  --fontSize: var(--evgPaginationFontSizeL);
  --fontColor: var(--evgPaginationFontColor);
  --fontAltColor: var(--evgPaginationFontAltColor);
  --fontHoverColor: var(--evgPaginationFontHoverColor);
  --fontWeight: var(--evgPaginationFontWeight);
  --borderColor: var(--evgPaginationBorderColor);
  --borderHoverColor: var(--evgPaginationBorderHoverColor);
  --borderActiveColor: var(--evgPaginationBorderActiveColor);
  --borderRadius: var(--evgPaginationBorderRadius);
  --backgroundColor: var(--evgPaginationBackgroundColor);
  --backgroundHoverColor: var(--evgPaginationBackgroundHoverColor);
  --backgroundActiveColor: var(--evgPaginationBackgroundActiveColor);
  --outlineFocusColor: var(--evgPaginationOutlineFocusColor);
  --alignment: var(--evgPaginationAlignment);
}

.evergreen .evergreen-pager .evergreen-pager-list {
    text-align: var(--alignment);
}

.evergreen .evergreen-pager-button {
    background: var(--backgroundColor);
    border: 1px solid var(--borderColor);
    border-radius: var(--borderRadius, 0);
    color: var(--fontColor);
    font-family: var(--fontFamily);
    font-size: var(--fontSize);
    font-weight: var(--fontWeight);
    text-decoration: none;
}

.evergreen .evergreen-pager-button:not(.js--disabled):hover,
.evergreen .evergreen-pager-button:not(.evergreen-pager-button--disabled):hover {
    background: var(--backgroundHoverColor);
    border-color: var(--borderHoverColor);
    color: var(--fontHoverColor);
}

.evergreen .evergreen-pager-button.js--active,
.evergreen .evergreen-pager-button.evergreen-pager-button--active {
    background: var(--backgroundActiveColor);
    border-color: var(--borderActiveColor);
    color: var(--fontAltColor);
}

.evergreen .evergreen-pager-button:not(.js--disabled):focus,
.evergreen .evergreen-pager-button:not(.js--disabled):focus-visible,
.evergreen .evergreen-pager-button:not(.evergreen-pager-button--disabled):focus,
.evergreen .evergreen-pager-button:not(.evergreen-pager-button--disabled):focus-visible {
    outline-color: var(--outlineFocusColor);
}

/* Input */
.evergreen .evergreen-input,
.evergreen input {
  --fontFamily: var(--evgInputFontFamily);
  --fontColor: var(--evgInputFontColor);
  --fontSize: var(--evgInputFontSizeL);
  --placeholderFontColor: var(--evgInputPlaceholderColor);
  --fontWeight: var(--evgInputFontWeight);
  --lineHeight: var(--evgInputFontLineHeight);
  --capitalization: var(--evgInputFontCapitalization);
  --borderColor: var(--evgInputBorderColor);
  --borderFocusColor: var(--evgInputBorderFocusColor);
  --borderRadius: var(--evgInputBorderRadius);
  --backgroundColor: var(--evgInputBackgroundColor);

  font-family: var(--fontFamily);
  font-size: var(--fontSize);
  color: var(--fontColor);
  font-weight: var(--fontWeight);
  line-height: var(--lineHeight);
  text-transform: var(--capitalization);
  border: 1px solid var(--borderColor);
  border-radius: var(--borderRadius);
  background: var(--backgroundColor);

  transition: all 0.3s ease-in-out;

}

.evergreen .evergreen-input:focus,
.evergreen input:focus {
  border-color: var(--borderFocusColor);
  outline-color: var(--borderFocusColor);
}

.evergreen .evergreen-input::placeholder,
.evergreen input::placeholder {
  color: var(--placeholderFontColor);
  visibility: var(--evgInputShowPlaceholder);
}

/* Label */
.evergreen .evergreen-label,
.evergreen label,
.evergreen legend {
  --fontFamily: var(--evgInputFontFamily);
  --fontSize : var(--evgInputSecondaryFontSizeL);
  --fontColor: var(--evgInputSecondaryFontColor);
  --fontWeight: var(--evgInputSecondaryFontWeight);
  --lineHeight: var(--evgInputSecondaryFontLineHeight);
  --capitalization: var(--evgInputSecondaryFontCapitalization);

  font-family: var(--fontFamily);
  font-size: var(--fontSize);
  color: var(--fontColor);
  font-weight: var(--fontWeight);
  line-height: var(--lineHeight);
  text-transform: var(--capitalization);

}


/* Module Specific Styling */
.evergreen {
    --backgroundColor: var(--evgModuleBackgroundColor);
    --borderRadius: var(--evgModuleBackgroundBorderRadius);

    background: var(--backgroundColor);
    border-radius: var(--borderRadius);
    background-size: cover;
    background-attachment: fixed;
    background-repeat: no-repeat;
    background-position: center;
}

.evergreen .evergreen-title,
.evergreen .evergreen-title .ModuleTitle {
    --fontSize: var(--evgModuleNameFontSizeL);
    --fontColor: var(--evgModuleNameFontColor);
    --fontFamily: var(--evgModuleNameFontFamily);
    --fontWeight: var(--evgModuleNameFontWeight);
    --capitalization: var(--evgModuleNameFontCapitalization);
    --lineHeight: var(--evgModuleNameFontLineHeight);
    --alignment: var(--evgModuleNameFontAlignment);
}

.evergreen .evergreen-title, .evergreen .evergreen-title .ModuleTitle {
    margin: 0;
    overflow-wrap: anywhere;

    color: var(--fontColor);
    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    font-weight: var(--fontWeight);
    text-transform: var(--capitalization);
    line-height: var(--lineHeight);
    text-align: var(--alignment);
}

.evergreen .evergreen-item {
    --backgroundColor: var(--evgModuleBackgroundItemBackgroundColor);
    --borderRadius: var(--evgModuleBackgroundItemBorderRadius);
    --padding: var(--evgPaddingItemPadding);
    --borderBottom: var(--evgModuleItemUnderline);
    --borderBottomStyle: var(--evgModuleItemUnderlineStyle);
    --borderBottomColor: var(--evgModuleItemUnderlineColor);

    background: var(--backgroundColor);
    border-radius: var(--borderRadius);
    padding: 30px var(--padding) 10px var(--padding);
    border-bottom: var(--borderBottom);
    border-bottom-style: var(--borderBottomStyle);
    border-bottom-color: var(--borderBottomColor);
}

.evergreen .evergreen-financial-details_report-container,
.evergreen .evergreen-latest-quarter-report-documents
{
    --backgroundColor: var(--evgModuleBackgroundItemBackgroundColor);
    --borderRadius: var(--evgModuleBackgroundItemBorderRadius);

    background: var(--backgroundColor);
    border-radius: var(--borderRadius);
}

.evergreen-financial-table--outer {
    border-radius: var(--evgTableBorderRadius);
}

.evergreen-dividend-history-container {
    border-radius: var(--evgTableBorderRadius);
    overflow: hidden;
}

.evergreen-sec-filings-table-outer {
    border-radius: var(--evgTableBorderRadius);
    overflow: hidden;
}

.evergreen .evergreen-item-container tbody,
.evergreen .evergreen-item-container tr,
.evergreen .evergreen-item-container tr:nth-child(even) {
    --backgroundColor: var(--evgModuleBackgroundItemBackgroundColor);

    background: var(--backgroundColor);
    border: none;
    border-collapse: collapse;
}

.evergreen .evergreen-item tr,
.evergreen .evergreen-item tr:nth-child(even) {
    --borderBottom: var(--evgModuleItemUnderline);
    --borderBottomStyle: var(--evgModuleItemUnderlineStyle);
    --borderBottomColor: var(--evgModuleItemUnderlineColor);

    border-bottom: var(--borderBottom);
    border-bottom-style: var(--borderBottomStyle);
    border-bottom-color: var(--borderBottomColor);
}

.evergreen .evergreen-item-container.evergreen-item-one-column {
    display: grid;
    grid-template-columns: 1fr;
    padding-bottom: 16px;
}

.evergreen .evergreen-item-container.evergreen-item-two-column {
    display: grid;
    grid-template-columns: 1fr 1fr;
}

.evergreen .evergreen-item-title,
.evergreen a.evergreen-item-title,
.evergreen .evergreen-item-detail-title {
    --fontSize: var(--evgModuleItemTitleFontSizeL);
    --fontFamily: var(--evgModuleItemTitleFontFamily);
    --fontWeight: var(--evgModuleItemTitleFontWeight);
    --lineHeight: var(--evgModuleItemTitleFontLineHeight);
    --capitalization: var(--evgModuleItemTitleFontCapitalization);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen .evergreen-item-subtitle {
    --fontSize: var(--evgModuleItemSubtitleFontSizeL);
    --fontColor: var(--evgModuleItemSubtitleFontColor);
    --fontFamily: var(--evgModuleItemSubtitleFontFamily);
    --fontWeight: var(--evgModuleItemSubtitleFontWeight);
    --lineHeight: var(--evgModuleItemSubtitleFontLineHeight);
    --capitalization: var(--evgModuleItemSubtitleFontCapitalization);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen .evergreen-item-title:not(:hover):not(:focus),
.evergreen a.evergreen-item-title:not(:hover):not(:focus),
.evergreen .evergreen-item-detail-title {
    --fontColor: var(--evgModuleItemTitleFontColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen a.evergreen-item-title:hover {
    --fontColor: var(--evgModuleItemTitleFontHoverColor);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

.evergreen a.evergreen-item-title:focus,
.evergreen a.evergreen-item-title:focus-visible {
    --fontColor: var(--evgModuleItemTitleFontFocusColor);
    color: var(--fontColor);
}

.evergreen .evergreen-item-date-time {
    --fontSize: var(--evgDateTimeFontSizeL);
    --fontColor: var(--evgDateTimeFontColor);
    --fontFamily: var(--evgDateTimeFontFamily);
    --fontWeight: var(--evgDateTimeFontWeight);
    --capitalization: var(--evgDateTimeFontCapitalization);
    --lineHeight: var(--evgDateTimeFontLineHeight);

    font-size: var(--fontSize);
    font-family: var(--fontFamily);
    color: var(--fontColor);
    font-weight: var(--fontWeight);
    line-height: var(--lineHeight);
    text-transform: var(--capitalization);
}

/* Grid */
.evergreen .evergreen-grid-item {
    --backgroundColor: var(--evgModuleBackgroundItemBackgroundColor);
}

/* Modal */
.evergreen.evergreen-modal {
    --backgroundColor: var(--evgModuleBackgroundColor);
}

.evergreen.evergreen-modal .evg-fancybox-close-small {
    --color: var(--evgButtonFontColor);
}

.evergreen.evergreen-modal .evg-fancybox-close-small:focus {
    --color: var(--evgButtonFontFocusColor);
}

.evergreen.evergreen-modal .evg-fancybox-close-small:hover {
    --color: var(--evgButtonFontHoverColor);
}

/* Custom Grid */
.evergreen .evergreen-grid-row {
    --grid-col: var(--evergreen-grid-col, 1);
    display: grid;
    grid-template-columns: repeat(var(--grid-col), minmax(0, 1fr));
    grid-template-rows: repeat(1, 1fr);
    grid-column-gap: 0;
    grid-row-gap: 0;
    margin: 0;
    padding: 0;
    margin-top: var(--evergreen-grid-margin-top);
    margin-bottom: var(--evergreen-grid-margin-bottom);
}

.evergreen .evergreen-grid-row .evergreen-grid-column {
    margin: 0;
    padding: var(--evergreen-grid-col-p);
    background: var(--evergreen-grid-col-bg, transparent);
}

/** Grid Tablet **/
@media only screen and (max-width: 1024px) and (min-width: 481px) {
    .evergreen .evergreen-grid-row {
        grid-template-columns: repeat(var(--evergreen-grid-col-tablet), minmax(0, 1fr));
    }

    .evergreen .evergreen-grid-row .evergreen-grid-column {
        padding: var(--evergreen-grid-col-p-tablet);
    }
}

/** Grid Mobile **/
@media only screen and (max-width: 480px) {
    .evergreen .evergreen-grid-row {
        grid-template-columns: repeat(var(--evergreen-grid-col-mobile), minmax(0, 1fr));
    }

    .evergreen .evergreen-grid-row .evergreen-grid-column {
        padding: var(--evergreen-grid-col-p-mobile);
    }
}

/** Responsive Tablet **/
@media only screen and (max-width: 1024px) and (min-width: 481px) {
    .evergreen {
        --fontSize: var(--evgBodyFontSizeM);
        padding-top: 25px;
        padding-bottom: 25px;
    }

    /* Text Editor */
    .evergreen p {
        --fontSize: var(--evgBodyFontSizeM);
        font-size: var(--fontSize);
    }

    .evergreen h1 {
        font-size: var(--evgH1FontSizeM);
        font-family: var(--evgH1FontFamily);
    }

    .evergreen h2 {
        font-size: var(--evgH2FontSizeM);
        font-family: var(--evgH2FontFamily);
    }

    .evergreen h3 {
        --fontSize: var(--evgH3FontSizeM);
    }

    .evergreen h4 {
        font-size: var(--evgH4FontSizeM);
        font-family: var(--evgH4FontFamily);
    }

    .evergreen h5 {
        font-size: var(--evgH5FontSizeM);
        font-family: var(--evgH5FontFamily);
    }

    .evergreen caption {
        --fontSize: var(--evgCaptionFontSizeM);
    }

/* TODO: Text editor buttons have Link Font Weight applied to them. */

    /* Hyperlink */
    .evergreen .evergreen-link,
    .evergreen.evergreen-text-editor a:not([class*="evergreen-button"]) {
        --fontSize: var(--evgHyperlinkFontSizeM);
        font-size: var(--fontSize);
    }

    /* Default Button */
    .evergreen .button, .evergreen .evergreen-button {
        --fontSize: var(--evgButtonFontSizeM);
        font-size: var(--fontSize);
    }

    .evergreen .evergreen-icon-button::before {
        font-size: var(--evgButtonFontSizeM);
    }

    /* Alt Button */
    .evergreen .button--alt, .evergreen .evergreen-button--alt {
        --fontSize: var(--evgButtonAltFontSizeM);
        font-size: var(--fontSize);
    }

    .evergreen-icon-button .evergreen-icon-button--alt::before {
        font-size: var(--evgButtonAltFontSizeM);
    }

    /* Dropdown */
    .evergreen .evergreen-dropdown {
        --fontSize: var(--evgDropdownFontSizeM);
        font-size: var(--fontSize);
    }

    /* Accordion */
    .evergreen .evergreen-accordion-header,
    .evergreen .evergreen-accordion button,
    .evergreen .evergreen-accordion button .evergreen-accordion-title,
    .evergreen .evergreen-accordion button .accordion-toggle-icon {
        font-size: var(--evgAccordionFontSizeM);
    }

    .evergreen .evergreen-accordion button .evergreen-accordion-subtitle {
        font-size: var(--evgAccordionSubtitleFontSizeM);
    }

    .evergreen .evergreen-accordion-content .evergreen-accordion-title {
        font-size: var(--evgH3FontSizeM);
    }

    .evergreen .evergreen-accordion-content-text,
    .evergreen .evergreen-accordion-content-text p {
        font-size: var(--evgBodyFontSizeM);
    }

    /* Carousel */
    .evergreen .evergreen-carousel-display-item-subtitle-text,
    .evergreen .evergreen-carousel-display-item-text,
    .evergreen .evergreen-carousel-slider-item-text {
        font-size: var(--evgBodyFontSizeM);
    }

    .evergreen .evergreen-carousel-display-item-header-text {
        font-size: var(--evgH3FontSizeM);
    }

    /* Tabs */
    .evergreen .evergreen-tabs ul li a {
        --fontSize: var(--evgTabsFontSizeM);
    }

    /* Module Styling */
    .evergreen .evergreen-title, .evergreen .evergreen-title .ModuleTitle {
        --fontSize: var(--evgModuleNameFontSizeM);
    }

    .evergreen .evergreen-item-title,
    .evergreen a.evergreen-item-title,
    .evergreen .evergreen-item-detail-title {
        --fontSize: var(--evgModuleItemTitleFontSizeM);
        font-size: var(--fontSize);
    }

    .evergreen .evergreen-item-subtitle {
        --fontSize: var(--evgModuleItemSubtitleFontSizeM);
        font-size: var(--fontSize);

    }

    .evergreen .evergreen-item-date-time {
        --fontSize: var(--evgDateTimeFontSizeM);
    }

    /* Pager */
    .evergreen .evergreen-pager,
    .evergreen .evergreen-pager .evergreen-pager-list,
    .evergreen .evergreen-pager .evergreen-pager-list-item {
        --fontSize: var(--evgPaginationFontSizeM);
        font-size: var(--fontSize);
    }

    /* List */
    .evergreen ul:not(.evergreen-styleless-list),
    .evergreen ol:not(.evergreen-styleless-list) {
        --fontSize: var(--evgListFontSizeM);
    }

    /* Input */
    .evergreen .evergreen-input,
    .evergreen input {
      --fontSize: var(--evgInputFontSizeM);
      font-size: var(--fontSize);
    }

    /* Label */
    .evergreen .evergreen-label,
    .evergreen label,
    .evergreen legend {
      --fontSize: var(--evgInputSecondaryFontSizeM);
      font-size: var(--fontSize);
    }
}

/** Responsive Mobile **/
@media only screen and (max-width: 480px) {
    .evergreen {
        --fontSize: var(--evgBodyFontSizeS);
        padding-top: 20px;
        padding-bottom: 20px;
    }

    /* Text Editor */
    .evergreen p {
        --fontSize: var(--evgBodyFontSizeS);
        font-size: var(--fontSize);
    }

    .evergreen h1 {
        font-size: var(--evgH1FontSizeS);
        font-family: var(--evgH1FontFamily);
    }

    .evergreen h2 {
        font-size: var(--evgH2FontSizeS);
        font-family: var(--evgH2FontFamily);
    }

    .evergreen h3 {
        --fontSize: var(--evgH3FontSizeS);
    }

    .evergreen h4 {
        font-size: var(--evgH4FontSizeS);
        font-family: var(--evgH4FontFamily);
    }

    .evergreen h5 {
        font-size: var(--evgH5FontSizeS);
        font-family: var(--evgH5FontFamily);
    }

    .evergreen caption {
        --fontSize: var(--evgCaptionFontSizeS);
    }

    /* Hyperlink */
    .evergreen .evergreen-link,
    .evergreen.evergreen-text-editor a:not([class*="evergreen-button"]) {
        --fontSize: var(--evgHyperlinkFontSizeS);
        font-size: var(--fontSize);
    }

    /* Default Button */
    .evergreen .button,
    .evergreen .evergreen-button {
        --fontSize: var(--evgButtonFontSizeS);
        font-size: var(--fontSize);
    }

    .evergreen .evergreen-icon-button::before {
        font-size: var(--evgButtonFontSizeS);
    }

    /* Alt Button */
    .evergreen .button--alt,
    .evergreen .evergreen-button--alt {
        --fontSize: var(--evgButtonAltFontSizeS);
        font-size: var(--fontSize);
    }

    .evergreen-icon-button .evergreen-icon-button--alt::before {
        font-size: var(--evgButtonAltFontSizeS);
    }

    /* Dropdown */
    .evergreen .evergreen-dropdown {
        --fontSize: var(--evgDropdownFontSizeS);
        font-size: var(--fontSize);
    }

    /* Accordion */
    .evergreen .evergreen-accordion-header,
    .evergreen .evergreen-accordion button,
    .evergreen .evergreen-accordion button .evergreen-accordion-title,
    .evergreen .evergreen-accordion button .accordion-toggle-icon {
        font-size: var(--evgAccordionFontSizeS);
    }

    .evergreen .evergreen-accordion button .evergreen-accordion-subtitle {
        font-size: var(--evgAccordionSubtitleFontSizeS);
    }

    .evergreen .evergreen-accordion-content .evergreen-accordion-title {
        font-size: var(--evgH3FontSizeS);
    }

    .evergreen .evergreen-accordion-content-text,
    .evergreen-accordion-content-text p {
        font-size: var(--evgBodyFontSizeS);
    }

    /* Carousel */
    .evergreen .evergreen-carousel-display-item-subtitle-text,
    .evergreen .evergreen-carousel-display-item-text,
    .evergreen .evergreen-carousel-slider-item-text {
        font-size: var(--evgBodyFontSizeS);
    }

    .evergreen .evergreen-carousel-display-item-header-text {
        font-size: var(--evgH3FontSizeS);
    }

    /* Tabs */
    .evergreen .evergreen-tabs ul li a {
        --fontSize: var(--evgTabsFontSizeS);
    }

    /* Module Styling */
    .evergreen .evergreen-title,
    .evergreen .evergreen-title .ModuleTitle {
        --fontSize: var(--evgModuleNameFontSizeS);
    }

    .evergreen .evergreen-item-title,
    .evergreen a.evergreen-item-title,
    .evergreen .evergreen-item-detail-title {
        --fontSize:  var(--evgModuleItemTitleFontSizeS);
        font-size: var(--fontSize);

    }

    .evergreen .evergreen-item-subtitle {
        --fontSize: var(--evgModuleItemSubtitleFontSizeS);
        font-size: var(--fontSize);
    }

    .evergreen .evergreen-item-date-time {
        --fontSize: var(--evgDateTimeFontSizeS);
    }

    /* Pager */
    .evergreen .evergreen-pager,
    .evergreen .evergreen-pager .evergreen-pager-list,
    .evergreen .evergreen-pager .evergreen-pager-list-item {
        --fontSize: var(--evgPaginationFontSizeS);
        font-size: var(--fontSize);
    }

    /* List */
    .evergreen ul:not(.evergreen-styleless-list),
    .evergreen ol:not(.evergreen-styleless-list) {
        --fontSize: var(--evgListFontSizeS);
    }

    /* Input */
    .evergreen .evergreen-input,
    .evergreen input {
      --fontSize: var(--evgInputFontSizeS);
      font-size: var(--fontSize);
    }

    /* Label */
    .evergreen .evergreen-label,
    .evergreen label,
    .evergreen legend {
      --fontSize: var(--evgInputSecondaryFontSizeS);
      font-size: var(--fontSize);
    }
}