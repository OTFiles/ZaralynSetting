.class public Lcom/android/settings/applications/manageapplications/AppFilterItem;
.super Ljava/lang/Object;
.source "AppFilterItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settings/applications/manageapplications/AppFilterItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

.field private final mFilterType:I

.field private final mTitle:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;II)V
    .locals 0
    .param p1, "filter"    # Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;
    .param p2, "filterType"    # I
    .param p3, "title"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    .line 40
    iput p2, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    .line 41
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    .line 42
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/applications/manageapplications/AppFilterItem;)I
    .locals 2
    .param p1, "appFilter"    # Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 58
    if-nez p1, :cond_0

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_0
    if-ne p0, p1, :cond_1

    .line 62
    const/4 v0, 0x0

    return v0

    .line 64
    :cond_1
    iget v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iget v1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->compareTo(Lcom/android/settings/applications/manageapplications/AppFilterItem;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    if-nez v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 73
    return v1

    .line 75
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 76
    .local v2, "other":Lcom/android/settings/applications/manageapplications/AppFilterItem;
    iget v3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    iget v4, v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    iget v4, v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    iget-object v4, v2, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    if-ne v3, v4, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    .line 70
    .end local v2
    :cond_3
    :goto_0
    return v0
.end method

.method public getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    return-object v0
.end method

.method public getFilterType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    return v0
.end method

.method public getTitle()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilterByKey;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/applications/manageapplications/AppFilterItem;->mFilterType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
