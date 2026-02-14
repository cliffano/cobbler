ci: clean lint test

clean:
	cd examples/ansible-role/ && \
	  make -f ../../src/Makefile-cobbler clean

lint:
	checkmake src/Makefile-cobbler
	find . -type f -name "*.json" | while IFS= read -r file; do echo "> $$file"; python3 -m json.tool "$$file"; done

test:
	cd examples/ansible-role/ && \
	  make -f ../../src/Makefile-cobbler ci update-to-latest update-to-main && \
	  make -f ../../src/Makefile-cobbler update-to-version TARGET_COBBLER_VERSION=main && \
	  rm -f Makefile

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

release: release-minor

.PHONY: ci clean lint test release-major release-minor release-patch release
