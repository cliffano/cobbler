ci: clean lint test

clean:
	cd examples/ansible-role/ && \
	  make -f ../../src/Makefile-mdh clean

lint:
	checkmake src/Makefile-mdh
	find . -type f -name "*.json" | while IFS= read -r file; do echo "> $$file"; python3 -m json.tool "$$file"; done

test:
	cd examples/ansible-role/ && \
	  make -f ../../src/Makefile-mdh ci update-to-latest update-to-main && \
	  make -f ../../src/Makefile-mdh update-to-version TARGET_MDH_VERSION=main && \
	  rm -f Makefile

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

release: release-minor

.PHONY: ci clean lint test release-major release-minor release-patch release
