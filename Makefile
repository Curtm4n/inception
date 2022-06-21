# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cdapurif <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/21 09:00:50 by cdapurif          #+#    #+#              #
#    Updated: 2022/06/21 09:11:48 by cdapurif         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

LOC = srcs/docker-compose.yml

all:
	docker-compose -f $(LOC) up -d --build

clean:
	docker-compose -f $(LOC) down --volumes

fclean:	clean
	docker image prune --all --force

re:	fclean all

.PHONY:	all clean fclean re
