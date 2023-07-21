const std = @import("std");

const raylib = @import("raylib");
const raygui = @import("raygui");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    var arena = std.heap.ArenaAllocator.init(gpa.allocator());

    raylib.SetConfigFlags(.{    });
    raylib.InitWindow(800, 400, "Widget");
    raylib.SetTargetFPS(60);

    defer raylib.CloseWindow();

    while (!raylib.WindowShouldClose()) {
        raylib.BeginDrawing();
        defer raylib.EndDrawing();
        defer _ = arena.reset(.retain_capacity);

        raylib.ClearBackground(raylib.BLANK);
        raylib.DrawFPS(0, 0);
    }
}
