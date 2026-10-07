.class public Landroidx/slice/builders/ListBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/ListBuilder$RowBuilder;,
        Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    }
.end annotation


# instance fields
.field private mImpl:Landroidx/slice/builders/impl/ListBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;J)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "ttl"    # J

    .line 189
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 190
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p3, p4}, Landroidx/slice/builders/impl/ListBuilder;->setTtl(J)V

    .line 191
    return-void
.end method

.method static synthetic access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/ListBuilder;

    .line 118
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    return-object v0
.end method


# virtual methods
.method public addInputRange(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$InputRangeBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 574
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/ListBuilder$InputRangeBuilder;>;"
    new-instance v0, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 575
    .local v0, "inputRangeBuilder":Landroidx/slice/builders/ListBuilder$InputRangeBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 576
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addInputRange(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "b"    # Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 561
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->access$200(Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 562
    return-object p0
.end method

.method public addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/Consumer<",
            "Landroidx/slice/builders/ListBuilder$RowBuilder;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 212
    .local p1, "c":Landroid/support/v4/util/Consumer;, "Landroid/support/v4/util/Consumer<Landroidx/slice/builders/ListBuilder$RowBuilder;>;"
    new-instance v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>(Landroidx/slice/builders/ListBuilder;)V

    .line 213
    .local v0, "b":Landroidx/slice/builders/ListBuilder$RowBuilder;
    invoke-interface {p1, v0}, Landroid/support/v4/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 214
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    return-object v1
.end method

.method public addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;
    .locals 2
    .param p1, "builder"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 203
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-static {p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    move-result-object v1

    check-cast v1, Landroidx/slice/builders/impl/TemplateBuilderImpl;

    invoke-interface {v0, v1}, Landroidx/slice/builders/impl/ListBuilder;->addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 204
    return-object p0
.end method

.method protected selectImpl()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 4

    .line 536
    sget-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getClock()Landroidx/slice/Clock;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroidx/slice/builders/impl/ListBuilderV1Impl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;Landroidx/slice/Clock;)V

    return-object v0

    .line 538
    :cond_0
    sget-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->checkCompatible(Landroidx/slice/SliceSpec;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 539
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    sget-object v2, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    invoke-direct {v0, v1, v2}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-object v0

    .line 541
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public setAccentColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1, "color"    # I

    .line 348
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setColor(I)V

    .line 349
    return-object p0
.end method

.method public setColor(I)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .param p1, "color"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 331
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    return-object v0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 195
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    .line 196
    return-void
.end method

.method public setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/slice/builders/ListBuilder;"
        }
    .end annotation

    .line 357
    .local p1, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder;->setKeywords(Ljava/util/List;)V

    .line 358
    return-object p0
.end method
