#include "Game.h"
#include <iostream>

int main()
{
	const auto width = 3000;
	const auto height = 1800;
	const auto tileSize = 40;
	Game game(width, height, tileSize, { 0, 0 }, { 2960, 1760 });

	try{
		game.run();
	}
	catch (std::exception& e){
		std::cerr << e.what();
	}
}
