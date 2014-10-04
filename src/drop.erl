%% @author Olof
%% @doc Functions calculating velocities
%% @copyright olof
%% @version 0.1

-module(drop).
-export([fall_velocity/1, fall_velocity/2]).

%% @doc Calculates the velocity of an object falling to earth
%% as if it were in a vacuum.

-spec(fall_velocity(number()) -> number()).
fall_velocity(Distance) -> math:sqrt(2 * 9.8 * Distance).

fall_velocity(earth, Distance) when Distance >= 0 -> math:sqrt(2 * 9.8 * Distance);
fall_velocity(moon, Distance) when Distance >= 0 -> math:sqrt(2 * 1.6 * Distance);
fall_velocity(mars, Distance) when Distance >= 0 -> math:sqrt(2 * 3.71 * Distance).

