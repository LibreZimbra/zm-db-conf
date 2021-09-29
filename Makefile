# SPDX-License-Identifier: AGPL-3.0-or-later

all:
	echo -n

include build.mk

install:
	$(call mk_install_dir, libexec/scripts)
	$(call mk_install_dir, db)

	cp src/db/migration/*               $(INSTALL_DIR)/libexec/scripts
	cp src/db/mysql/create_database.sql $(INSTALL_DIR)/db
	cp src/db/mysql/db.sql              $(INSTALL_DIR)/db

clean:
	echo -n
