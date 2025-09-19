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
            ["spawn"] = "player"
          }
        },
        {
          id = 1,
          properties = {
            ["spawn"] = "runner"
          }
        },
        {
          id = 2,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 3,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 4,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 5,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 6,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 7,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 8,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 9,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 10,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 11,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 12,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 13,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 14,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 15,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 16,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 17,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 18,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 19,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 20,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 21,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 22,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 23,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 24,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 25,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 26,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 27,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 28,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 29,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 30,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 31,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 32,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 33,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 34,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 35,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 36,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 37,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 38,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 39,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 40,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 41,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 42,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 43,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 44,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 45,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 46,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 47,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 48,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 49,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 50,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 51,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 52,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 53,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 54,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 55,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 56,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 57,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 58,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 59,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 60,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 61,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 62,
          properties = {
            ["spawn"] = ""
          }
        },
        {
          id = 63,
          properties = {
            ["spawn"] = ""
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
