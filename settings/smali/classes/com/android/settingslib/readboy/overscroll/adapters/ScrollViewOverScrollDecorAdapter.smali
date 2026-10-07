.class public Lcom/android/settingslib/readboy/overscroll/adapters/ScrollViewOverScrollDecorAdapter;
.super Ljava/lang/Object;
.source "ScrollViewOverScrollDecorAdapter.java"

# interfaces
.implements Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;


# instance fields
.field protected final mView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ScrollView;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/settingslib/readboy/overscroll/adapters/ScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/ScrollView;

    .line 26
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/ScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method public isInAbsoluteEnd()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/ScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/ScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method

.method public isInAbsoluteStart()Z
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/android/settingslib/readboy/overscroll/adapters/ScrollViewOverScrollDecorAdapter;->mView:Landroid/widget/ScrollView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
