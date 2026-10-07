.class public Lcom/android/settings/parentlauncher/DefaultBaseItemTouchHelper;
.super Landroid/support/v7/widget/helper/ItemTouchHelper;
.source "DefaultBaseItemTouchHelper.java"


# instance fields
.field private mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 13
    invoke-direct {p0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 14
    iput-object p1, p0, Lcom/android/settings/parentlauncher/DefaultBaseItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    .line 15
    return-void
.end method


# virtual methods
.method public getCallback()Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/android/settings/parentlauncher/DefaultBaseItemTouchHelper;->mCallback:Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;

    return-object v0
.end method
