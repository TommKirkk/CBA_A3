#include "script_component.hpp"

PREP(initDisplayInterrupt);
PREP(initDisplayMultiplayerSetup);
PREP(initDisplayOptionsLayout);
PREP(initDisplayPassword);
PREP(initDisplayRemoteMissions);

if (hasInterface) then {
    // preload 3den and curator item lists
    PREP(preload3DEN);
    PREP(preloadCurator);

    _timeStart = diag_tickTime;
    call FUNC(preload3DEN);
    INFO_1("3DEN item list preloaded. Time: %1 ms",round ((diag_tickTime - _timeStart) * 1000));

    private _timeStart = diag_tickTime;
    call FUNC(preloadCurator);
    INFO_1("Curator item list preloaded. Time: %1 ms",round ((diag_tickTime - _timeStart) * 1000));
};
