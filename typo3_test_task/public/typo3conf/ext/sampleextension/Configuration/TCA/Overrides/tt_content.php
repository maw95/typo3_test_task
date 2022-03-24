<?php
// Adds the content element to the "Type" dropdown
\TYPO3\CMS\Core\Utility\ExtensionManagementUtility::addTcaSelectItem(
'tt_content',
'CType',
[
// title
'LLL:EXT:sampleextension/Resources/Private/Language/locallang.xlf:sampleextension_jumbotron_title',
// plugin signature: extkey_identifier
'sampleextension_jumbotron',
// icon identifier
'content-text',
'special'
],
'textmedia',
'after'
);

// Configure the default backend fields for the content element
$GLOBALS['TCA']['tt_content']['types']['sampleextension_jumbotron'] = [
    'showitem' => '
    --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:general,
    --palette--;;general,
    header; Header,
    subheader; Subheader,
    bodytext; Text,
    buttonurl; Button URL,
    buttontext; Button Text,
    --div--;LLL:EXT:core/Resources/Private/Language/Form/locallang_tabs.xlf:access,
    --palette--;;hidden,
    --palette--;;access,
    ',
    'columnsOverrides' => [
        'header'=> [
            'config' => [
                'eval' => 'required'
            ]
        ],
        'subheader'=> [
            'config' => [
                'max' => 150
            ]
        ],
        'bodytext' => [
            'config' => [
                'enableRichtext' => true,
                'richtextConfiguration' => 'default',
            ],
        ],
        'buttonurl'=> [
            'config' => [
                'renderType' => 'inputLink',
            ]
        ],
        'buttontext'=> [
            'config' => [
                'renderType' => 'input',
                'max' => 30
            ]
        ],
    ],
];