.class public Lcom/android/settings/dashboard/DashboardData;
.super Ljava/lang/Object;
.source "DashboardData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;,
        Lcom/android/settings/dashboard/DashboardData$Item;,
        Lcom/android/settings/dashboard/DashboardData$ItemsDataDiffCallback;,
        Lcom/android/settings/dashboard/DashboardData$Builder;
    }
.end annotation


# static fields
.field static final STABLE_ID_CONDITION_CONTAINER:I = 0x4

.field static final STABLE_ID_CONDITION_FOOTER:I = 0x3

.field static final STABLE_ID_CONDITION_HEADER:I = 0x2

.field static final STABLE_ID_SUGGESTION_CONTAINER:I


# instance fields
.field private final mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

.field private final mConditionExpanded:Z

.field private final mConditions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/DashboardData$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/android/settings/dashboard/DashboardData$Builder;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$000(Lcom/android/settings/dashboard/DashboardData$Builder;)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    .line 65
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$100(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    .line 66
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$200(Lcom/android/settings/dashboard/DashboardData$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    .line 67
    invoke-static {p1}, Lcom/android/settings/dashboard/DashboardData$Builder;->access$300(Lcom/android/settings/dashboard/DashboardData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardData;->buildItemsData()V

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardData$Builder;Lcom/android/settings/dashboard/DashboardData$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/dashboard/DashboardData$Builder;
    .param p2, "x1"    # Lcom/android/settings/dashboard/DashboardData$1;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/DashboardData;-><init>(Lcom/android/settings/dashboard/DashboardData$Builder;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/dashboard/DashboardData;)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData;

    .line 42
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData;

    .line 42
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/dashboard/DashboardData;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData;

    .line 42
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/dashboard/DashboardData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/dashboard/DashboardData;

    .line 42
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    return v0
.end method

.method static synthetic access$900(Ljava/util/List;)I
    .locals 1
    .param p0, "x0"    # Ljava/util/List;

    .line 42
    invoke-static {p0}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method private addToItemList(Ljava/lang/Object;IIZ)V
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "type"    # I
    .param p3, "stableId"    # I
    .param p4, "add"    # Z

    .line 174
    if-eqz p4, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/settings/dashboard/DashboardData$Item;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardData$Item;-><init>(Ljava/lang/Object;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_0
    return-void
.end method

.method private buildItemsData()V
    .locals 12

    .line 184
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditions:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/DashboardData;->getConditionsToShow(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 187
    .local v1, "hasConditions":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    invoke-direct {p0, v4}, Lcom/android/settings/dashboard/DashboardData;->getSuggestionsToShow(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 188
    .local v4, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    invoke-static {v4}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v5

    if-lez v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v2

    .line 192
    .local v5, "hasSuggestions":Z
    :goto_1
    const v6, 0x7f0d01c3

    invoke-direct {p0, v4, v6, v2, v5}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 196
    const v6, 0x7f0d00bc

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    move v7, v3

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    const/4 v8, 0x0

    invoke-direct {p0, v8, v6, v3, v7}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 200
    new-instance v6, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;

    invoke-direct {v6, v0}, Lcom/android/settings/dashboard/DashboardData$ConditionHeaderData;-><init>(Ljava/util/List;)V

    const v7, 0x7f0d0060

    const/4 v9, 0x2

    if-eqz v1, :cond_3

    iget-boolean v10, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-nez v10, :cond_3

    move v10, v3

    goto :goto_3

    :cond_3
    move v10, v2

    :goto_3
    invoke-direct {p0, v6, v7, v9, v10}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 206
    const v6, 0x7f0d005e

    const/4 v7, 0x4

    if-eqz v1, :cond_4

    iget-boolean v9, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-eqz v9, :cond_4

    move v9, v3

    goto :goto_4

    :cond_4
    move v9, v2

    :goto_4
    invoke-direct {p0, v0, v6, v7, v9}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 210
    const v6, 0x7f0d005f

    const/4 v7, 0x3

    if-eqz v1, :cond_5

    iget-boolean v9, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    if-eqz v9, :cond_5

    move v9, v3

    goto :goto_5

    :cond_5
    move v9, v2

    :goto_5
    invoke-direct {p0, v8, v6, v7, v9}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 213
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    if-eqz v6, :cond_6

    .line 214
    iget-object v6, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-virtual {v6}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v6

    .line 215
    .local v6, "tiles":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/drawer/Tile;>;"
    move v7, v2

    .local v7, "i":I
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 216
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/drawer/Tile;

    .line 217
    .local v8, "tile":Lcom/android/settingslib/drawer/Tile;
    const v9, 0x7f0d0085

    new-array v10, v3, [Ljava/lang/Object;

    iget-object v11, v8, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    aput-object v11, v10, v2

    invoke-static {v10}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v10

    invoke-direct {p0, v8, v9, v10, v3}, Lcom/android/settings/dashboard/DashboardData;->addToItemList(Ljava/lang/Object;IIZ)V

    .line 215
    .end local v8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 221
    .end local v6
    .end local v7
    :cond_6
    return-void
.end method

.method private getConditionsToShow(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    .line 228
    .local p1, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    if-nez p1, :cond_0

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/dashboard/conditional/Condition;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 233
    .local v2, "size":I
    :goto_0
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 234
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/dashboard/conditional/Condition;

    .line 235
    .local v3, "condition":Lcom/android/settings/dashboard/conditional/Condition;
    invoke-virtual {v3}, Lcom/android/settings/dashboard/conditional/Condition;->shouldShow()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 236
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    .end local v3
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1
    :cond_3
    return-object v0
.end method

.method private getSuggestionsToShow(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 243
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    if-nez p1, :cond_0

    .line 244
    const/4 v0, 0x0

    return-object v0

    .line 246
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    .line 247
    return-object p1

    .line 249
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 250
    .local v0, "suggestionsToShow":Ljava/util/List;, "Ljava/util/List<Landroid/service/settings/suggestions/Suggestion;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 251
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/settings/suggestions/Suggestion;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    .end local v2
    :cond_2
    return-object v0
.end method

.method private static sizeOf(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)I"
        }
    .end annotation

    .line 224
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCategory()Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mCategory:Lcom/android/settingslib/drawer/DashboardCategory;

    return-object v0
.end method

.method public getItemEntityByPosition(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 82
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    return-object v0
.end method

.method public getItemIdByPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 74
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->id:I

    return v0
.end method

.method public getItemList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/dashboard/DashboardData$Item;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getItemTypeByPosition(I)I
    .locals 1
    .param p1, "position"    # I

    .line 78
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/DashboardData$Item;

    iget v0, v0, Lcom/android/settings/dashboard/DashboardData$Item;->type:I

    return v0
.end method

.method public getPositionByTile(Lcom/android/settingslib/drawer/Tile;)I
    .locals 5
    .param p1, "tile"    # Lcom/android/settingslib/drawer/Tile;

    .line 152
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 153
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 154
    iget-object v2, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/DashboardData$Item;

    iget-object v2, v2, Lcom/android/settings/dashboard/DashboardData$Item;->entity:Ljava/lang/Object;

    .line 155
    .local v2, "entity":Ljava/lang/Object;
    if-ne v2, p1, :cond_0

    .line 156
    return v1

    .line 157
    :cond_0
    instance-of v3, v2, Lcom/android/settingslib/drawer/Tile;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    move-object v4, v2

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    return v1

    .line 153
    .end local v2
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public hasSuggestion()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mSuggestions:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/dashboard/DashboardData;->sizeOf(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConditionExpanded()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/dashboard/DashboardData;->mConditionExpanded:Z

    return v0
.end method

.method public size()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/dashboard/DashboardData;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
