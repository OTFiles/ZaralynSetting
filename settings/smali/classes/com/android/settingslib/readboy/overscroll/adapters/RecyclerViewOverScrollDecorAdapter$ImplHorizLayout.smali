.class public Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;
.super Ljava/lang/Object;
.source "RecyclerViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$Impl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ImplHorizLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;


# direct methods
.method protected constructor <init>(Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    .line 104
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;->this$0:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInAbsoluteEnd()Z
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;->this$0:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isInAbsoluteStart()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter$ImplHorizLayout;->this$0:Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    iget-object v0, v0, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
