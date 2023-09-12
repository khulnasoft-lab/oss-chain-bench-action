## Table Of Contents
- [Chain Bench Github Action](#oss-chain-bench-github-action)
  - [Table Of Contents](#table-of-contents)
  - [Usage](#usage)
    - [Workflow](#workflow)
  - [Action](#action)
    - [Inputs](#inputs)
    - [Outputs](#outputs)


## Usage

### Workflow

```yaml
jobs:
  chain_bench_scan_example:
    runs-on: ubuntu-latest
    name: Test Job
    steps:
      - name: Chain Bench
        id: oss-chain-bench
        uses: khulnasoft-lab/oss-chain-bench-action@v1.0.0
        with:
          repository-url: ${{ github.server_url }}/${{ github.repository }} # Compiles to https://github.com/khulnasoft-lab/oss-chain-bench-action
          github-token: ${{ secrets.GITHUB_TOKEN }}
          scm-platform: github #Optional parameter for dedicated SCM servers

      # Using the github action output from the scan step "oss-chain-bench-result" (JSON so you can run rego/jq against it)
      - name: Echo
        run: echo ${{ steps.oss-chain-bench.outputs.oss-chain-bench-result }}

```

## Action

### Inputs

Following inputs
| input          | description                          | required |
|----------------|--------------------------------------|----------|
| repository-url | The full repository url to scan      | True     |
| github-token   | The github token to use for scanning | True     |
| scm-platform   | the SCM platform for dedicated envs  | False    |

### Outputs

| output             | description                  |
|--------------------|------------------------------|
| oss-chain-bench-result | JSON output from oss-chain-bench |







[github-actions]: https://github.com/features/actions
[oss-chain-bench]: https://github.com/khulnasoft-lab/oss-chain-bench
[license]: https://github.com/itaywol/oss-chain-bench-action/blob/master/LICENSE
[license-img]: https://img.shields.io/github/license/itaywol/oss-chain-bench-action
