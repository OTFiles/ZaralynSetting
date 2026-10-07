.class public Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;
.super Lcom/android/settings/parentlauncher/DefaultBaseItemTouchHelper;
.source "DefaultItemTouchHelper.java"


# instance fields
.field private itemTouchHelpCallback:Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;


# direct methods
.method public constructor <init>(Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V
    .locals 1
    .param p1, "onItemTouchCallbackListener"    # Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    .line 12
    new-instance v0, Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;

    invoke-direct {v0, p1}, Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;-><init>(Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V

    invoke-direct {p0, v0}, Lcom/android/settings/parentlauncher/DefaultBaseItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;->getCallback()Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-result-object v0

    check-cast v0, Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;

    iput-object v0, p0, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public setDragEnable(Z)V
    .locals 1
    .param p1, "canDrag"    # Z

    .line 22
    iget-object v0, p0, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;

    invoke-virtual {v0, p1}, Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;->setDragEnable(Z)V

    .line 23
    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 1
    .param p1, "canSwipe"    # Z

    .line 31
    iget-object v0, p0, Lcom/android/settings/parentlauncher/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;

    invoke-virtual {v0, p1}, Lcom/android/settings/parentlauncher/DefaultItemTouchHelpCallback;->setSwipeEnable(Z)V

    .line 32
    return-void
.end method
