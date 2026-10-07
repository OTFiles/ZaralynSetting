.class public Lcom/android/settingslib/readboy/overscroll/OverScrollDecoratorHelper;
.super Ljava/lang/Object;
.source "OverScrollDecoratorHelper.java"


# direct methods
.method public static setUpOverScroll(Landroid/support/v7/widget/RecyclerView;I)Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;
    .locals 2
    .param p0, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p1, "orientation"    # I

    .line 41
    packed-switch p1, :pswitch_data_0

    .line 47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :pswitch_0    # 0x1
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/HorizontalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/settingslib/readboy/overscroll/HorizontalOverScrollBounceEffectDecorator;-><init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;)V

    return-object v0

    .line 45
    :pswitch_1    # 0x0
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/android/settingslib/readboy/overscroll/adapters/RecyclerViewOverScrollDecorAdapter;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1    # 0x0
        :pswitch_0    # 0x1
    .end packed-switch
.end method

.method public static setUpOverScroll(Landroid/widget/ListView;)Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;
    .locals 2
    .param p0, "listView"    # Landroid/widget/ListView;

    .line 52
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/android/settingslib/readboy/overscroll/adapters/AbsListViewOverScrollDecorAdapter;-><init>(Landroid/widget/AbsListView;)V

    invoke-direct {v0, v1}, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;)V

    return-object v0
.end method

.method public static setUpOverScroll(Landroid/widget/ScrollView;)Lcom/android/settingslib/readboy/overscroll/IOverScrollDecor;
    .locals 2
    .param p0, "scrollView"    # Landroid/widget/ScrollView;

    .line 60
    new-instance v0, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;

    new-instance v1, Lcom/android/settingslib/readboy/overscroll/adapters/ScrollViewOverScrollDecorAdapter;

    invoke-direct {v1, p0}, Lcom/android/settingslib/readboy/overscroll/adapters/ScrollViewOverScrollDecorAdapter;-><init>(Landroid/widget/ScrollView;)V

    invoke-direct {v0, v1}, Lcom/android/settingslib/readboy/overscroll/VerticalOverScrollBounceEffectDecorator;-><init>(Lcom/android/settingslib/readboy/overscroll/adapters/IOverScrollDecoratorAdapter;)V

    return-object v0
.end method
