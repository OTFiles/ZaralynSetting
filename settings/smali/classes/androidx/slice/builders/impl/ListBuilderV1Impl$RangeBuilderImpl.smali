.class public Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "ListBuilderV1Impl.java"

# interfaces
.implements Landroidx/slice/builders/impl/ListBuilder$RangeBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/impl/ListBuilderV1Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RangeBuilderImpl"
.end annotation


# instance fields
.field private mContentDescr:Ljava/lang/CharSequence;

.field private mLayoutDir:I

.field private mMax:I

.field private mMin:I

.field private mPrimaryAction:Landroidx/slice/builders/SliceAction;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mValue:I

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;)V
    .locals 2
    .param p1, "sb"    # Landroidx/slice/Slice$Builder;

    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMin:I

    .line 176
    const/16 v1, 0x64

    iput v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMax:I

    .line 177
    iput v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValue:I

    .line 178
    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValueSet:Z

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mLayoutDir:I

    .line 187
    return-void
.end method


# virtual methods
.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 5
    .param p1, "builder"    # Landroidx/slice/Slice$Builder;

    .line 232
    iget-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValueSet:Z

    if-nez v0, :cond_0

    .line 234
    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMin:I

    iput v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValue:I

    .line 236
    :cond_0
    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMin:I

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValue:I

    if-gt v0, v1, :cond_6

    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValue:I

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMax:I

    if-gt v0, v1, :cond_6

    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMin:I

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMax:I

    if-ge v0, v1, :cond_6

    .line 242
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    const-string v2, "title"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 245
    :cond_1
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 248
    :cond_2
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 249
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mContentDescr:Ljava/lang/CharSequence;

    const-string v3, "content_description"

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v3, v4}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 251
    :cond_3
    iget-object v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    if-eqz v0, :cond_4

    .line 252
    new-instance v0, Landroidx/slice/Slice$Builder;

    .line 253
    invoke-virtual {p0}, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v3

    invoke-direct {v0, v3}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v3, "title"

    const-string v4, "shortcut"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    .line 254
    .local v0, "sb":Landroidx/slice/Slice$Builder;
    iget-object v3, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    invoke-virtual {v3, v0}, Landroidx/slice/builders/SliceAction;->buildSlice(Landroidx/slice/Slice$Builder;)Landroidx/slice/Slice;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 256
    .end local v0
    :cond_4
    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mLayoutDir:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    .line 257
    iget v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mLayoutDir:I

    const-string v1, "layout_direction"

    new-array v3, v2, [Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 259
    :cond_5
    const-string v0, "list_item"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMin:I

    const-string v3, "min"

    new-array v4, v2, [Ljava/lang/String;

    .line 260
    invoke-virtual {v0, v1, v3, v4}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMax:I

    const-string v3, "max"

    new-array v4, v2, [Ljava/lang/String;

    .line 261
    invoke-virtual {v0, v1, v3, v4}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    iget v1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValue:I

    const-string v3, "value"

    new-array v2, v2, [Ljava/lang/String;

    .line 262
    invoke-virtual {v0, v1, v3, v2}, Landroidx/slice/Slice$Builder;->addInt(ILjava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 263
    return-void

    .line 237
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range values, min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMax:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ensure value falls within (min, max) and min < max."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMax(I)V
    .locals 0
    .param p1, "max"    # I

    .line 196
    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mMax:I

    .line 197
    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)V
    .locals 0
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 217
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mPrimaryAction:Landroidx/slice/builders/SliceAction;

    .line 218
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 212
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mSubtitle:Ljava/lang/CharSequence;

    .line 213
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 207
    iput-object p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mTitle:Ljava/lang/CharSequence;

    .line 208
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .line 201
    iput p1, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValue:I

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/impl/ListBuilderV1Impl$RangeBuilderImpl;->mValueSet:Z

    .line 203
    return-void
.end method
