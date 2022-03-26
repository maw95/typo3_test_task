<?php
defined('TYPO3_MODE') || die();
/***************
 * Add default RTE configuration
 */
$GLOBALS['TYPO3_CONF_VARS']['RTE']['Presets']['sampleextension'] = 'EXT:sampleextension/Configuration/RTE/Default.yaml';

/***************
 * PageTS
 */
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig('<INCLUDE_TYPOSCRIPT: source="FILE:EXT:sampleextension/Configuration/TsConfig/Page/All.tsconfig">');
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addPageTSConfig(
    '<INCLUDE_TYPOSCRIPT: source="FILE:EXT:sampleextension/Configuration/TsConfig/Page/Mod/Wizards/NewContentElement.tsconfig">'
);