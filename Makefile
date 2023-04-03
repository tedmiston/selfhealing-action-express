LINE_LENGTH=120

.PHONY: format format-dry-run

format:
	isort --line-length=$(LINE_LENGTH) .
	black --line-length=$(LINE_LENGTH) .

format-dry-run:
	isort --diff --line-length=$(LINE_LENGTH) .
	black --diff --line-length=$(LINE_LENGTH) .
