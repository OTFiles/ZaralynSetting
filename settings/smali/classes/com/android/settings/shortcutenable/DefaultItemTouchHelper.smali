.class public Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;
.super Lcom/android/settings/shortcutenable/DefaultBaseItemTouchHelper;
.source "DefaultItemTouchHelper.java"


# instance fields
.field private itemTouchHelpCallback:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;


# direct methods
.method public constructor <init>(Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V
    .locals 1
    .param p1, "onItemTouchCallbackListener"    # Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;

    .line 12
    new-instance v0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;

    invoke-direct {v0, p1}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;-><init>(Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback$OnItemTouchCallbackListener;)V

    invoke-direct {p0, v0}, Lcom/android/settings/shortcutenable/DefaultBaseItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 13
    invoke-virtual {p0}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;->getCallback()Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    move-result-object v0

    check-cast v0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;

    iput-object v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;

    .line 14
    return-void
.end method


# virtual methods
.method public setDragEnable(Z)V
    .locals 1
    .param p1, "canDrag"    # Z

    .line 22
    iget-object v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;

    invoke-virtual {v0, p1}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->setDragEnable(Z)V

    .line 23
    return-void
.end method

.method public setSwipeEnable(Z)V
    .locals 1
    .param p1, "canSwipe"    # Z

    .line 31
    iget-object v0, p0, Lcom/android/settings/shortcutenable/DefaultItemTouchHelper;->itemTouchHelpCallback:Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;

    invoke-virtual {v0, p1}, Lcom/android/settings/shortcutenable/DefaultItemTouchHelpCallback;->setSwipeEnable(Z)V

    .line 32
    return-void
.end method
