.class public interface abstract Landroidx/slice/builders/impl/ListBuilder;
.super Ljava/lang/Object;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/ListBuilder$RowBuilder;,
        Landroidx/slice/builders/impl/ListBuilder$InputRangeBuilder;,
        Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;
    }
.end annotation


# virtual methods
.method public abstract addInputRange(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract addRow(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
.end method

.method public abstract createInputRangeBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract createRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setKeywords(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setTtl(J)V
.end method
