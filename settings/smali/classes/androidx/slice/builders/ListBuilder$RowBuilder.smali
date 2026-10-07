.class public Landroidx/slice/builders/ListBuilder$RowBuilder;
.super Landroidx/slice/builders/TemplateSliceBuilder;
.source "ListBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/builders/ListBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowBuilder"
.end annotation


# instance fields
.field private mHasDefaultToggle:Z

.field private mHasEndActionOrToggle:Z

.field private mHasEndImage:Z

.field private mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/builders/ListBuilder;)V
    .locals 1
    .param p1, "parent"    # Landroidx/slice/builders/ListBuilder;

    .line 904
    invoke-static {p1}, Landroidx/slice/builders/ListBuilder;->access$400(Landroidx/slice/builders/ListBuilder;)Landroidx/slice/builders/impl/ListBuilder;

    move-result-object v0

    invoke-interface {v0}, Landroidx/slice/builders/impl/ListBuilder;->createRowBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/builders/TemplateSliceBuilder;-><init>(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V

    .line 905
    return-void
.end method

.method static synthetic access$000(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/impl/ListBuilder$RowBuilder;
    .locals 1
    .param p0, "x0"    # Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 890
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    return-object v0
.end method


# virtual methods
.method public addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 1282
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addEndItem(Landroidx/slice/builders/SliceAction;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;
    .param p2, "isLoading"    # Z

    .line 1298
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndImage:Z

    if-nez v0, :cond_1

    .line 1303
    iget-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasDefaultToggle:Z

    if-nez v0, :cond_0

    .line 1308
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;Z)V

    .line 1309
    invoke-virtual {p1}, Landroidx/slice/builders/SliceAction;->getImpl()Landroidx/slice/core/SliceActionImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isDefaultToggle()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasDefaultToggle:Z

    .line 1310
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mHasEndActionOrToggle:Z

    .line 1311
    return-object p0

    .line 1304
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only one non-custom toggle can be added in a single row. If you would like to include multiple toggles in a row, set a custom icon for each toggle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1299
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add an action to end items when anicon has already been added. End items cannot have a mixture of actions and icons."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setImpl(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 1
    .param p1, "impl"    # Landroidx/slice/builders/impl/TemplateBuilderImpl;

    .line 1336
    move-object v0, p1

    check-cast v0, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    iput-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    .line 1337
    return-void
.end method

.method public setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "action"    # Landroidx/slice/builders/SliceAction;

    .line 1086
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)V

    .line 1087
    return-object p0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .line 1119
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSubtitle(Ljava/lang/CharSequence;Z)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;
    .param p2, "isLoading"    # Z

    .line 1133
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1, p2}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;Z)V

    .line 1134
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 1095
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    invoke-interface {v0, p1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1096
    return-object p0
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 1
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 993
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2
    .param p1, "icon"    # Landroid/support/v4/graphics/drawable/IconCompat;
    .param p2, "imageMode"    # I

    .line 1026
    iget-object v0, p0, Landroidx/slice/builders/ListBuilder$RowBuilder;->mImpl:Landroidx/slice/builders/impl/ListBuilder$RowBuilder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/slice/builders/impl/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;IZ)V

    .line 1027
    return-object p0
.end method
