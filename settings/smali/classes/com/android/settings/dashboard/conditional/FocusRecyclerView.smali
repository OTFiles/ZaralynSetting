.class public Lcom/android/settings/dashboard/conditional/FocusRecyclerView;
.super Lcom/android/settingslib/readboy/BaseRecyclerView;
.source "FocusRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/readboy/BaseRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 36
    invoke-super {p0, p1}, Lcom/android/settingslib/readboy/BaseRecyclerView;->onWindowFocusChanged(Z)V

    .line 37
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    invoke-interface {v0, p1}, Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;->onWindowFocusChanged(Z)V

    .line 40
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    .line 43
    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/FocusRecyclerView;->mListener:Lcom/android/settings/dashboard/conditional/FocusRecyclerView$FocusListener;

    .line 44
    return-void
.end method
