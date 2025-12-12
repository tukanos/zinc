baselines
baseline: spec
    <baseline>
    spec for: #common do: [
        spec
            package: 'Zinc-Character-Encoding-Core';
            package: 'Zinc-Character-Encoding-Tests' with: [ spec requires: #('Zinc-Character-Encoding-Core') ];
            package: 'Zinc-Resource-Meta-Core' with: [ spec requires: #('Zinc-Character-Encoding-Core') ];
            package: 'Zinc-Resource-Meta-Tests' with: [ spec requires: #('Zinc-Resource-Meta-Core') ];
            package: 'Zinc-HTTP' with: [ spec requires: #('Zinc-Character-Encoding-Core' 'Zinc-Resource-Meta-Core') ];
            package: 'Zinc-HTTP-Examples' with: [ spec requires: #('Zinc-HTTP') ];
            package: 'Zinc-Tests' with: [ spec requires: #('Zinc-HTTP') ].
        spec
            package: 'Zinc-AWS' with: [ spec requires: #('Zinc-HTTP' 'XMLParser') ];
            package: 'Zinc-REST' with: [ spec requires: #('Zinc-HTTP' 'NeoJSON') ];
            package: 'Zinc-WebSocket-Core' with: [ spec requires: #('Zinc-HTTP') ];
            package: 'Zinc-WebSocket-Tests' with: [ spec requires: #('Zinc-WebSocket-Core') ];
            package: 'Zinc-SSO-OAuth1-Core' with: [ spec requires: #('Zinc-HTTP' 'NeoJSON') ];
            package: 'Zinc-SSO-OAuth2-Core' with: [ spec requires: #('Zinc-HTTP' 'NeoJSON') ];
            package: 'Zinc-SSO-OpenID-Core' with: [ spec requires: #('Zinc-HTTP' 'XMLParser') ];
            package: 'Zinc-SSO-Demo' with: [ spec requires: #('Zinc-SSO-OAuth1-Core' 'Zinc-SSO-OAuth2-Core' 'Zinc-SSO-OpenID-Core') ];
            package: 'Zinc-SSO-OAuth1-Tests' with: [ spec requires: #('Zinc-SSO-OAuth1-Core') ];
            package: 'Zinc-SSO-OpenID-Tests' with: [ spec requires: #('Zinc-SSO-OpenID-Core') ];
            package: 'Zinc-WebDAV' with: [ spec requires: #('Zinc-HTTP') ];
            package: 'Zinc-WWS-Server' with: [ spec requires: #('Zinc-HTTP') ];
            package: 'Zinc-WWS-Client' with: [ spec requires: #('Zinc-HTTP') ];
            package: 'Zinc-Server-Sent-Events' with: [ spec requires: #('Zinc-HTTP') ].
        spec
            group: 'default' with: #('Core' 'Tests');
            group: 'Core' with: #('Zinc-HTTP' 'Zinc-HTTP-Examples');
            group: 'Tests' with: #('Zinc-Tests' 'Zinc-Character-Encoding-Tests' 'Zinc-Resource-Meta-Tests');
            group: 'Character-Encoding' with: #('Zinc-Character-Encoding-Core' 'Zinc-Character-Encoding-Tests');
            group: 'Resource-Meta' with: #('Zinc-Resource-Meta-Core' 'Zinc-Resource-Meta-Tests');
            group: 'AWS' with: #('Zinc-AWS');
            group: 'WebDAV' with: #('Zinc-WebDAV');
            group: 'WebSocket' with: #('Zinc-WebSocket-Core' 'Zinc-WebSocket-Tests');
            group: 'SSO-OAuth1' with: #('Zinc-SSO-OAuth1-Core' 'Zinc-SSO-OAuth1-Tests');
            group: 'SSO-OAuth2' with: #('Zinc-SSO-OAuth2-Core');
            group: 'SSO-OpenID' with: #('Zinc-SSO-OpenID-Core' 'Zinc-SSO-OpenID-Tests');
            group: 'SSO-Demo' with: #('Zinc-SSO-OAuth1-Core' 'Zinc-SSO-OAuth2-Core' 'Zinc-SSO-OpenID-Core');
            group: 'SSO' with: #('SSO-OAuth1' 'SSO-OAuth2' 'SSO-OpenID' 'SSO-Demo' 'Zinc-SSO-Demo');
            group: 'WWS' with: #('Zinc-WWS-Server' 'Zinc-WWS-Client');
            group: 'REST' with: #('Zinc-REST');
            group: 'Server-Sent-Events' with: #('Zinc-Server-Sent-Events') ].

    spec for: #'pharo' do: [
        spec baseline: 'NeoJSON'
                 with: [ spec
                             loads: #('Core');
                             repository: 'github://svenvc/NeoJSON:master/repository' ];
             baseline: 'XMLParser'
                 with: [ spec
                             loads: #('Core');
                             repository: 'github://pharo-contributions/XML-XMLParser:master/src' ];
            baseline: 'Zodiac Project'
                with: [ spec
                            className: 'BaselineOfZodiac';
                            loads: #('Core' 'Tests');
                            repository: 'github://svenvc/zodiac:master/repository' ].
        spec
            package: 'Zinc-Pharo-Character-Encoding-Core' with: [ spec requires: #('Zinc-Character-Encoding-Core') ];
            package: 'Zinc-Pharo-Character-Encoding-Tests' with: [ spec requires: #('Zinc-Character-Encoding-Tests'
                                                                                    'Zinc-Pharo-Character-Encoding-Core') ];
            package: 'Zinc-Pharo-Resource-Meta-Core' with: [ spec requires: #('Zinc-Resource-Meta-Core' 'Zinc-Pharo-Character-Encoding-Core') ];
            package: 'Zinc-Pharo-HTTP' with: [ spec postLoadDoIt: #recompileZnLogEventHierarchy;
                                                    requires: #('Zinc-Pharo-Character-Encoding-Core' 'Zinc-Pharo-Resource-Meta-Core' 'Zinc-HTTP') ];
            package: 'Zinc-Pharo-HTTP-Examples' with: [ spec requires: #('Zinc-HTTP-Examples') ];
            package: 'Zinc-Pharo-Tests' with: [ spec requires: #('Zinc-Tests') ].
        spec
            package: 'Zinc-Pharo-WebSocket-Core' with: [ spec requires: #('Zinc-Pharo-HTTP') ];
            package: 'Zinc-Pharo-WebSocket-Tests' with: [ spec requires: #('Zinc-Pharo-WebSocket-Core') ];
            package: 'Zinc-Zodiac-Core' with: [ spec requires: #('Zinc-HTTP' 'Zodiac Project') ];
            package: 'Zinc-Zodiac-Tests' with: [ spec requires: #('Zinc-Zodiac-Core') ];
            package: 'Zinc-Pharo-Zodiac-Tests' with: [ spec requires: #('Zinc-Zodiac-Tests') ].
        spec
            group: 'Core' with: #('Zinc-Pharo-HTTP' 'Zinc-Pharo-HTTP-Examples');
            group: 'Tests' with: #('Zinc-Pharo-Tests' 'Zinc-Pharo-Character-Encoding-Tests');
            group: 'Character-Encoding' with: #('Zinc-Pharo-Character-Encoding-Core' 'Zinc-Pharo-Character-Encoding-Tests');
            group: 'Resource-Meta' with: #('Zinc-Resource-Meta-Core' 'Zinc-Resource-Meta-Tests');
            group: 'WebSocket' with: #('Zinc-Pharo-WebSocket-Core' 'Zinc-Pharo-WebSocket-Tests');
            group: 'SSL' with: #('Zinc-Zodiac-Core' 'Zinc-Zodiac-Tests' 'Zinc-Pharo-Zodiac-Tests');
            group: 'Zodiac' with: #('SSL') ].  "alias"

    spec for: #'gemstone' do: [
        spec baseline: 'GLASS1'
                 with: [ spec
                             loads: #('Base' 'GsMisc');
                             repository: 'github://glassdb/glass:master/repository' ];
             baseline: 'PharoCompatibility'
                 with: [ spec
                             loads: #('Core');
                             repository: 'github://GsDevKit/PharoCompatibility:master/repository' ];
            baseline: 'OrderedDictionary'
                with: [ spec
                             loads: #('Core');
                             repository: 'github://GsDevKit/OrderedDictionary:master/repository' ];
             baseline: 'NeoJSON'
                 with: [ spec
                             loads: #('Core');
                             repository: 'github://GsDevKit/NeoJSON:gs_master/repository' ];
             baseline: 'Cryptography'
                 with: [ spec
                             loads: #('Cryptography');
                             repository: 'github://GsDevKit/Cryptography:master/repository' ];
             baseline: 'GsApplicationTools'
                 with: [ spec
                             loads: #('Core');
                             repository: 'github://GsDevKit/gsApplicationTools:master/repository' ];
             baseline: 'XMLParser'
                 with: [ spec
                             loads: #('Core');
                             repository: 'github://GsDevKit/XML-XMLParser:gemstone/src' ];
             baseline: 'Zodiac Project'
                 with: [ spec
                             className: 'BaselineOfZodiac';
                             loads: #('Core');
                             repository: 'github://GsDevKit/zodiac:gs_master/repository' ].

        spec
            package: 'Zinc-GemStone-Resource-Meta-Core' with: [ spec requires: #('Zinc-Resource-Meta-Core') ];
            package: 'Zinc-HTTP' with: [ spec requires: #('GLASS1' 'Zinc-FileSystem-Legacy');
                                              includes: #('SocketStream') ];
            package: 'Zinc-Tests' with: [ spec requires: #('PharoCompatibility') ];
            package: 'Zinc-GemStone-HTTP' with: [ spec requires: #('Zinc-GemStone-Resource-Meta-Core' 'Zinc-HTTP') ];
            package: 'Zinc-GemStone-HTTP-Examples' with: [ spec requires: #('Zinc-HTTP-Examples') ];
            package: 'Zinc-GemStone-Tests' with: [ spec requires: #('Zinc-Tests') ].
        spec
            package: 'Zinc-GemStone-WebSocket-Core' with: [ spec requires: #('Zinc-GemStone-HTTP') ];
            package: 'Zinc-GemStone-WebSocket-Tests' with: [ spec requires: #('Zinc-GemStone-WebSocket-Core') ];
            package: 'Zinc-Zodiac-Core' with: [ spec requires: #('Zodiac Project') ];
            package: 'Zinc-Zodiac-Tests' with: [ spec requires: #('Zinc-Zodiac-Core') ];
            package: 'Zinc-GemStone-Zodiac-Tests' with: [ spec requires: #('Zinc-Zodiac-Core') ];
            package: 'SocketStream';
            package: 'Zinc-FileSystem-Legacy' with: [ spec requires: #('GLASS1') ];
            package: 'Zinc-GemStone-Server-Tools' with: [ spec requires: #('Zinc-HTTP' 'GsApplicationTools') ];
            package: 'Zinc-WebSocket-Core' with: [ spec requires: #('Zinc-HTTP' 'Cryptography') ].
        spec
            group: 'Core' with: #('Zinc-GemStone-HTTP' 'Zinc-GemStone-HTTP-Examples' 'Zinc-GemStone-Server-Tools');
            group: 'CI' with: #('REST' 'WebSocket');
            group: 'Tests' with: #('Zinc-GemStone-Tests');
            group: 'Resource-Meta' with: #('Zinc-Resource-Meta-Core' 'Zinc-Resource-Meta-Tests');
            group: 'WebSocket' with: #('Zinc-GemStone-WebSocket-Core' 'Zinc-GemStone-WebSocket-Tests');
            group: 'SSL' with: #('Zinc-Zodiac-Core' 'Zinc-Zodiac-Tests' 'Zinc-GemStone-Zodiac-Tests');
            group: 'Zodiac' with: #('SSL') ].  "alias"

        spec
            for: #'gs3.x'
            do: [
                spec
                    package: 'Zinc-Character-Encoding-Tests'
                        with: [ spec includes: #('Zinc-Character-Encoding-GS3-Tests') ];
                    package: 'Zinc-Character-Encoding-GS3-Tests'
                        with: [ spec requires: #('Zinc-Character-Encoding-Tests') ];
                    package: 'Zinc-WebSocket-Core'
                        with: [ spec requires: #('Zinc-HTTP' 'Cryptography') ] ].
        spec
            for: #(#'gs3.7.x' #'gs3.8.x' #'gs3.9.x')
            do: [
                spec
                    package: 'Zinc-Character-Encoding-Core'
                        with: [ spec
                                    file: 'Zinc-Character-Encoding-Core.v37';
                                    includes: #('Zinc-GemStone-Character-Encoding-Core' 'Zinc-Character-Encoding-GS32-Core') ];
                    package: 'Zinc-GemStone-Character-Encoding-Core' 
                       with: [ spec 
                                   file: 'Zinc-GemStone-Character-Encoding-Core.v37';
                                   requires: #('SocketStream') ];
                    package: 'Zinc-Character-Encoding-GS32-Core'
                        with: [ spec 
                                    file: 'Zinc-Character-Encoding-GS32-Core.v37';
                                    requires: #('Zinc-Character-Encoding-Core') ] ].