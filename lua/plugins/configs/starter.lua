local date = os.date("%Y/%m/%d")
local starter = require('mini.starter')


return {
	evaluate_single = true,
	footer = os.date(),
	header = table.concat({
                [[/* ************************************************************************** */]],
                [[/*                                                                            */]],
                [[/*                                                        :::      ::::::::   */]],
                [[/*   i_hate_programming.c                               :+:      :+:    :+:   */]],
                [[/*                                                    +:+ +:+         +:+     */]],
                [[/*   By: avoltorb <avoltorb@student.42.fr>          +#+  +:+       +#+        */]],
                [[/*                                                +#+#+#+#+#+   +#+           */]],
                [[/*   Created: 2002/02/05 15:30:51 by avoltorb          #+#    #+#             */]],
  string.format([[/*   Updated: %s 00:37:50 by avoltorb         ###   ########.fr       */]], date),
                [[/*                                                                            */]],
                [[/* ************************************************************************** */]],
	}, "\n"),
	query_updaters = [[abcdefghilmoqrstuvwxyz0123456789_-,.ABCDEFGHIJKLMOQRSTUVWXYZ]],
	items = {
        starter.sections.sessions(7, true),
        starter.sections.recent_files(5, false, true),
        { action = "Lazy", name = "L: Lazy dashboard", section = "Lazy" },
        { action = "lua _LAZYGIT_TOGGLE()", name = "G: LazyGit", section = "Lazy" },
        starter.sections.builtin_actions(),
	},
}

