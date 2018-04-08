{
    'targets': [
        {
            'target_name': 'tlsh',
            'type': 'executable',

            'defines': [
                'HAVE_CONFIG_H',
                'HAVE_SYS_TYPES_H',
                'HAVE_FCNTL_H',
            ],

            'sources': [
                'config.h',
                '../src/tlsh.cpp',
                '../src/tlsh_impl.cpp',
                '../src/tlsh_util.cpp',
                # '../src/gen_arr2.cpp' ,
                '../test/tlsh_unittest.cpp'
            ],

            'include_dirs': [
                '../src',
                '../src/include',
            ],

            'conditions': [
                ['OS=="linux"', {
                    'defines': [
                        'HAVE_UNISTD_H',
                        'HAVE_DIRENT_H',
                        'TIME_WITH_SYS_TIME',
                        'HAVE_SYS_PARAM_H',
                        'HAVE_SYS_IOCTL_H',
                        'HAVE_SYS_PARAM_H',
                        'HAVE_SYS_MOUNT_H',
                        'BUCKETS_256',
                    ],
                }],
                ['OS=="win"', {
                    'sources': ['getopt.h', 'getopt.c',],
                    'defines': ['UNICODE', '_UNICODE', 'NOMINMAX'],
                }]
            ],

            'msvs_settings': {
                'VCLinkerTool': {
                    'AdditionalDependencies': [
                        'shell32.lib',
                    ]
                }
            },
        },
        {
            'target_name': 'rand_tags',
            'type': 'executable',

            'defines': [
                'HAVE_CONFIG_H',
                'HAVE_SYS_TYPES_H',
                'HAVE_FCNTL_H',
            ],

            'sources': [
                'config.h',
                '../src/tlsh.cpp',
                '../src/tlsh_impl.cpp',
                '../src/tlsh_util.cpp',
                '../src/rand_tags.cpp',
            ],

            'include_dirs': [
                '../src',
                '../src/include',
            ],

            'conditions': [
                ['OS=="linux"', {
                    'defines': [
                        'HAVE_UNISTD_H',
                        'HAVE_DIRENT_H',
                        'TIME_WITH_SYS_TIME',
                        'HAVE_SYS_PARAM_H',
                        'HAVE_SYS_IOCTL_H',
                        'HAVE_SYS_PARAM_H',
                        'HAVE_SYS_MOUNT_H',
                        'BUCKETS_256',
                    ],
                }],
                ['OS=="win"', {
                    'sources': ['getopt.h', 'getopt.c', ],
                    'defines': ['UNICODE', '_UNICODE', 'NOMINMAX'],
                }]
            ],

            'msvs_settings': {
                'VCLinkerTool': {
                    'AdditionalDependencies': [
                        'shell32.lib',
                    ]
                }
            },
        },
    ]
}
