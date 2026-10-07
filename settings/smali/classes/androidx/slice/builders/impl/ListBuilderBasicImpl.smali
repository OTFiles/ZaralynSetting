.class public Landroidx/slice/builders/impl/ListBuilderBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;
    }
.end annotation


# instance fields
.field mIsError:Z


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 0
    .param p1, "b"    # Landroidx/slice/Slice$Builder;
    .param p2, "spec"    # Landroidx/slice/SliceSpec;

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 48
    return-void
.end method


# virtual methods
.method public addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0
    .param p1, "builder"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 81
    return-void
.end method

.method public addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 0
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 55
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 177
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->mIsError:Z

    if-eqz v0, :cond_0

    .line 178
    const-string v0, "error"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 180
    :cond_0
    return-void
.end method

.method public createInputRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 2

    .line 165
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/builders/impl/ListBuilderV1Impl$InputRangeBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;)V

    return-object v0
.end method

.method public createRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    .line 136
    new-instance v0, Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl$RowBuilderImpl;-><init>(Landroidx/slice/builders/impl/ListBuilderBasicImpl;)V

    return-object v0
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 104
    return-void
.end method

.method public setKeywords(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 110
    .local p1, "keywords":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    .line 111
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 112
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    const/4 v4, 0x0

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 114
    .end local v2
    :cond_0
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    const-string v2, "keywords"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 115
    return-void
.end method

.method public setTtl(J)V
    .locals 0
    .param p1, "ttl"    # J

    .line 121
    return-void
.end method
