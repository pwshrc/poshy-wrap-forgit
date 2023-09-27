#!/usr/bin/env pwsh
$ErrorActionPreference = "Stop"
Set-StrictMode -Version Latest


if (-not (Test-Command fzf) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
} elseif (-not (Test-Command forgit) -and (-not (Get-Variable -Name PWSHRC_FORCE_MODULES_EXPORT_UNSUPPORTED -Scope Global -ValueOnly -ErrorAction SilentlyContinue))) {
    return
}

# Functions for wrapping forgit.
function forgit-log {
    forgit log @args
}
Export-ModuleMember -Function forgit-log

function forgit-diff {
    forgit diff @args
}
Export-ModuleMember -Function forgit-diff

function forgit-add {
    forgit add @args
}
Export-ModuleMember -Function forgit-add

function forgit-reset-head {
    forgit reset_head @args
}
Export-ModuleMember -Function forgit-reset-head

function forgit-stash-show {
    forgit stash_show @args
}
Export-ModuleMember -Function forgit-stash-show

function forgit-stash-push {
    forgit stash_push @args
}
Export-ModuleMember -Function forgit-stash-push

function forgit-clean {
    forgit clean @args
}
Export-ModuleMember -Function forgit-clean

function forgit-cherry-pick {
    forgit cherry_pick @args
}
Export-ModuleMember -Function forgit-cherry-pick

function forgit-cherry-pick-from-branch {
    forgit cherry_pick_from_branch @args
}
Export-ModuleMember -Function forgit-cherry-pick-from-branch

function forgit-rebase {
    forgit rebase @args
}
Export-ModuleMember -Function forgit-rebase

function forgit-fixup {
    forgit fixup @args
}
Export-ModuleMember -Function forgit-fixup

function forgit-checkout-file {
    forgit checkout_file @args
}
Export-ModuleMember -Function forgit-checkout-file

function forgit-checkout-branch {
    forgit checkout_branch @args
}
Export-ModuleMember -Function forgit-checkout-branch

function forgit-checkout-tag {
    forgit checkout_tag @args
}
Export-ModuleMember -Function forgit-checkout-tag

function forgit-checkout-commit {
    forgit checkout_commit @args
}
Export-ModuleMember -Function forgit-checkout-commit

function forgit-branch-delete {
    forgit branch_delete @args
}
Export-ModuleMember -Function forgit-branch-delete

function forgit-revert-commit {
    forgit revert_commit @args
}
Export-ModuleMember -Function forgit-revert-commit

function forgit-blame {
    forgit blame @args
}
Export-ModuleMember -Function forgit-blame

function forgit-ignore {
    forgit ignore @args
}
Export-ModuleMember -Function forgit-ignore

function forgit-ignore-update {
    forgit ignore_update @args
}
Export-ModuleMember -Function forgit-ignore-update

function forgit-ignoreget() {
    forgit ignore_get @args
}
Export-ModuleMember -Function forgit-ignoreget

function forgit-ignore-list {
    forgit ignore_list @args
}
Export-ModuleMember -Function forgit-ignore-list

function forgit-ignore-clean {
    forgit ignore_clean @args
}
Export-ModuleMember -Function forgit-ignore-clean

$forgit_add = ($Env:forgit_add ?? "ga")
$forgit_reset_head = ($Env:forgit_reset_head ?? "grh")
$forgit_log = ($Env:forgit_log ?? "glo")
$forgit_diff = ($Env:forgit_diff ?? "gd")
$forgit_ignore = ($Env:forgit_ignore ?? "gi")
$forgit_checkout_file = ($Env:forgit_checkout_file ?? "gcf")
$forgit_checkout_branch = ($Env:forgit_checkout_branch ?? "gcb")
$forgit_checkout_commit = ($Env:forgit_checkout_commit ?? "gco")
$forgit_checkout_tag = ($Env:forgit_checkout_tag ?? "gct")
$forgit_branch_delete = ($Env:forgit_branch_delete ?? "gbd")
$forgit_revert_commit = ($Env:forgit_revert_commit ?? "grc")
$forgit_clean = ($Env:forgit_clean ?? "gclean")
$forgit_stash_show = ($Env:forgit_stash_show ?? "gss")
$forgit_stash_push = ($Env:forgit_stash_push ?? "gsp")
$forgit_cherry_pick = ($Env:forgit_cherry_pick ?? "gcp")
$forgit_rebase = ($Env:forgit_rebase ?? "grb")
$forgit_fixup = ($Env:forgit_fixup ?? "gfu")
$forgit_blame = ($Env:forgit_blame ?? "gbl")

Set-Alias -Name $forgit_add -Value forgit-add
Set-Alias -Name $forgit_reset_head -Value forgit-reset-head
Set-Alias -Name $forgit_log -Value forgit-log
Set-Alias -Name $forgit_diff -Value forgit-diff
Set-Alias -Name $forgit_ignore -Value forgit-ignore
Set-Alias -Name $forgit_checkout_file -Value forgit-checkout-file
Set-Alias -Name $forgit_checkout_branch -Value forgit-checkout-branch
Set-Alias -Name $forgit_checkout_commit -Value forgit-checkout-commit
Set-Alias -Name $forgit_checkout_tag -Value forgit-checkout-tag
Set-Alias -Name $forgit_branch_delete -Value forgit-branch-delete
Set-Alias -Name $forgit_revert_commit -Value forgit-revert-commit
Set-Alias -Name $forgit_clean -Value forgit-clean
Set-Alias -Name $forgit_stash_show -Value forgit-stash-show
Set-Alias -Name $forgit_stash_push -Value forgit-stash-push
Set-Alias -Name $forgit_cherry_pick -Value forgit-cherry-pick-from-branch
Set-Alias -Name $forgit_rebase -Value forgit-rebase
Set-Alias -Name $forgit_fixup -Value forgit-fixup
Set-Alias -Name $forgit_blame -Value forgit-blame

Export-ModuleMember -Alias @(
    $forgit_add,
    $forgit_reset_head,
    $forgit_log,
    $forgit_diff,
    $forgit_ignore,
    $forgit_checkout_file,
    $forgit_checkout_branch,
    $forgit_checkout_commit,
    $forgit_checkout_tag,
    $forgit_branch_delete,
    $forgit_revert_commit,
    $forgit_clean,
    $forgit_stash_show,
    $forgit_stash_push,
    $forgit_cherry_pick,
    $forgit_rebase,
    $forgit_fixup,
    $forgit_blame
)
