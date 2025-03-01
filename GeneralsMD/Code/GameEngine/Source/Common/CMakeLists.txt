add_subdirectory(Audio)
add_subdirectory(Bezier)
add_subdirectory(INI)
add_subdirectory(RTS)
add_subdirectory(System)
add_subdirectory(Thing)

add_library(engine.common INTERFACE)

target_sources(engine.common INTERFACE
        BitFlags.cpp
        CommandLine.cpp
        MessageStream.cpp
        Dict.cpp
        crc.cpp
        GlobalData.cpp
        version.cpp
        DiscreteCircle.cpp
        SkirmishBattleHonors.cpp
        CRCDebug.cpp
        StateMachine.cpp
        Recorder.cpp
        GameLOD.cpp
        MultiplayerSettings.cpp
        TerrainTypes.cpp
        PartitionSolver.cpp
        RandomValue.cpp
        UserPreferences.cpp
        PerfTimer.cpp
        GameEngine.cpp
        DamageFX.cpp
        Language.cpp
        MiniLog.cpp
        GameMain.cpp
        StatsCollector.cpp
        NameKeyGenerator.cpp
)