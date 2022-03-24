<?php
defined('TYPO3_MODE') || die();
call_user_func(function()
{
    /**
     * Temporary variables
     */
    $extensionKey = 'sampleextension';

    /**
     * Default TypoScript for SampleExtension
     */
    \TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addStaticFile(
        $extensionKey,
        'Configuration/TypoScript',
        'sample extension'
    );
});
