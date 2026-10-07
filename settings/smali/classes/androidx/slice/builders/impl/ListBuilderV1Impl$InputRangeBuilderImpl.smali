.class public Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;
.super Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;
.source "ListBuilderV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputRangeBuilderImpl"
.end annotation


# instance fields
.field private mAction:Landroid/app/PendingIntent;

.field private mThumb:Landroid/support/v4/graphics/drawable/IconCompat;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 0
    .param p1, "sb"    # Landroidx/slice/Slice$Builder;

    .line 275
    invoke-direct {p0, p1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 276
    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 290
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 293
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 294
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    invoke-super {p0, v0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->apply(Landroidx/slice/Slice$Builder;)V

    .line 295
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;->mThumb:Landroid/support/v4/graphics/drawable/IconCompat;

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;->mThumb:Landroid/support/v4/graphics/drawable/IconCompat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addIcon(Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 298
    :cond_0
    iget-object v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v2

    const-string v3, "range"

    invoke-virtual {p1, v1, v2, v3}, Landroidx/slice/Slice$Builder;->addAction(Landroid/app/PendingIntent;Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v1

    const-string v2, "list_item"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 299
    return-void

    .line 291
    .end local v0
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input ranges must have an associated action."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInputAction(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "action"    # Landroid/app/PendingIntent;

    .line 280
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;->mAction:Landroid/app/PendingIntent;

    .line 281
    return-void
.end method
