baseline
baseline: spec
    <baseline>
    spec
        for: #'common'
        do: [ 
            spec
                package: 'SWT16-Project11-Core';
                package: 'SWT16-Project11-Tests' with: [ spec requires: #('default') ].
            spec
                group: 'default' with: #('SWT16-Project11-Core');
                group: 'Tests' with: #('SWT16-Project11-Tests') ]