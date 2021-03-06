﻿var ganttData = [
    {
        ID: 1,
        UID: 1,
        Name: 'task1',
        PercentComplete: 80,
        Start: new Date(2009, 1, 2),
        Finish: new Date(2009, 2, 3),
        Baseline: [
            {
                Start: new Date(2009, 1, 2),
                Finish: new Date(2009, 1, 3),
                Duration: 123
            }
        ]
    },
    {
        ID: 2,
        UID: 2,
        Name: 'task2',
        Milestone: 1,
        Start: new Date(2009, 1, 5),
        Finish: new Date(2009, 1, 6),
        PredecessorLink: [
            {
                PredecessorUID: 1,
                Type: 1
            }
        ]
        
    },
    {
        ID: 3,
        UID: 3,
        Name: 'task3',
        Summary: 1,
        Start: new Date(2009, 1, 5),
        Finish: new Date(2009, 1, 6)
    },{
        ID: 4,
        UID: 4,
        Name: 'task4',
        Critical: 1,
        PercentComplete: 100,
        Start: new Date(2009, 1, 2),
        Finish: new Date(2009, 1, 8),
        PredecessorLink: [
            {
                PredecessorUID: 1,
                Type: 1
            },
            {
                PredecessorUID: 2,
                Type: 2
            },
            {
                PredecessorUID: 3,
                Type: 3
            }
        ]
    }
];