<?php

/**
 * Extension Manager/Repository config file for ext "sampleextension".
 */
$EM_CONF[$_EXTKEY] = [
    'title' => 'sample extension',
    'description' => '',
    'category' => 'templates',
    'constraints' => [
        'depends' => [
            'typo3' => '10.4.0-10.4.99',
            'fluid_styled_content' => '10.4.0-10.4.99',
            'rte_ckeditor' => '10.4.0-10.4.99',
        ],
        'conflicts' => [
        ],
    ],
    'autoload' => [
        'psr-4' => [
            'SampleCompany\\SampleExtension\\' => 'Classes',
        ],
    ],
    'state' => 'stable',
    'uploadfolder' => 0,
    'createDirs' => '',
    'clearCacheOnLoad' => 1,
    'author' => 'Maciek Woźniak',
    'author_email' => 'mwozniak95@gmail.com',
    'author_company' => 'Sample company',
    'version' => '1.0.0',
];
