return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.1",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 14,
  tilewidth = 16,
  tileheight = 16,
  nextlayerid = 8,
  nextobjectid = 3,
  properties = {},
  tilesets = {
    {
      name = "tileset",
      firstgid = 1,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 16,
      image = "tileset.png",
      imagewidth = 256,
      imageheight = 256,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 256,
      tiles = {
        {
          id = 0,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 1,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 16,
          properties = {
            ["collidable"] = true,
            ["jump"] = true
          }
        },
        {
          id = 17,
          properties = {
            ["collidable"] = true,
            ["jump"] = true
          }
        },
        {
          id = 18,
          properties = {
            ["collidable"] = true,
            ["jump"] = true
          }
        },
        {
          id = 50,
          animation = {
            {
              tileid = 50,
              duration = 100
            },
            {
              tileid = 66,
              duration = 100
            },
            {
              tileid = 82,
              duration = 100
            },
            {
              tileid = 66,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "spawn",
      firstgid = 257,
      class = "",
      tilewidth = 16,
      tileheight = 16,
      spacing = 0,
      margin = 0,
      columns = 8,
      image = "spawn.png",
      imagewidth = 128,
      imageheight = 128,
      objectalignment = "unspecified",
      tilerendersize = "tile",
      fillmode = "stretch",
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      wangsets = {},
      tilecount = 64,
      tiles = {
        {
          id = 0,
          properties = {
            ["spawner"] = "player"
          }
        },
        {
          id = 1,
          properties = {
            ["spawner"] = "runner"
          }
        },
        {
          id = 2,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 3,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 4,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 5,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 6,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 7,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 8,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 9,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 10,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 11,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 12,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 13,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 14,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 15,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 16,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 17,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 18,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 19,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 20,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 21,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 22,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 23,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 24,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 25,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 26,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 27,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 28,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 29,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 30,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 31,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 32,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 33,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 34,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 35,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 36,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 37,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 38,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 39,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 40,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 41,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 42,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 43,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 44,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 45,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 46,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 47,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 48,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 49,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 50,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 51,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 52,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 53,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 54,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 55,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 56,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 57,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 58,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 59,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 60,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 61,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 62,
          properties = {
            ["spawner"] = ""
          }
        },
        {
          id = 63,
          properties = {
            ["spawner"] = ""
          }
        }
      }
    }
  },
  layers = {
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 5,
      name = "bounds",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "",
          type = "",
          shape = "rectangle",
          x = 240,
          y = -112,
          width = 16,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        },
        {
          id = 2,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = -112,
          width = 16,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {
            ["collidable"] = true
          }
        }
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 14,
      id = 4,
      name = "clouds",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 51, 0, 0, 0, 0, 0, 0, 51, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 51, 0, 0,
        0, 0, 0, 0, 52, 53, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 51, 0, 52, 54, 54, 53, 0, 51, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 52, 54, 54, 54, 54, 53, 0, 0, 52, 53, 0, 0, 0, 0,
        0, 52, 54, 54, 54, 54, 54, 54, 53, 52, 54, 54, 53, 0, 51, 52,
        52, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 53, 52, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54,
        54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54, 54
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 14,
      id = 1,
      name = "bg",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 35, 0, 0, 0, 0, 0, 0, 35, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 14,
      id = 3,
      name = "fg",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 20, 21, 21, 21, 21, 21, 21, 21, 22, 0,
        0, 0, 0, 0, 0, 0, 36, 37, 37, 37, 37, 37, 37, 37, 38, 0,
        0, 8, 8, 8, 8, 8, 8, 9, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 24, 24, 24, 24, 24, 24, 25, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 21, 21, 21, 21, 21, 21, 22, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 37, 37, 37, 37, 37, 37, 38, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 14,
      id = 2,
      name = "main",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 33, 34, 0, 0, 0, 0, 2,
        2, 0, 0, 17, 18, 18, 18, 18, 18, 18, 18, 18, 19, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 33, 34, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 17, 18, 18, 18, 18, 18, 18, 18, 18, 19, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 34, 0, 0, 2,
        2, 0, 0, 17, 18, 18, 18, 18, 18, 18, 18, 18, 19, 0, 0, 2,
        2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2,
        2, 33, 34, 0, 0, 0, 0, 0, 0, 0, 0, 33, 34, 0, 0, 2,
        2, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2,
        2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 14,
      id = 6,
      name = "spawn",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 258, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 258, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    }
  }
}
