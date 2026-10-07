.class Lcom/android/settings/datetime/ZonePicker$MyComparator;
.super Ljava/lang/Object;
.source "ZonePicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/ZonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/util/Map<",
        "**>;>;"
    }
.end annotation


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private mSortedByName:Z

.field private mSortingKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "sortingKey"    # Ljava/lang/String;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datetime/ZonePicker$MyComparator;->mCollator:Ljava/text/Collator;

    .line 272
    iput-object p1, p0, Lcom/android/settings/datetime/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    .line 273
    const-string v0, "display_label"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datetime/ZonePicker$MyComparator;->mSortedByName:Z

    .line 274
    return-void
.end method

.method private isComparable(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 303
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/Comparable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 264
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datetime/ZonePicker$MyComparator;->compare(Ljava/util/Map;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/util/Map;Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 282
    .local p1, "map1":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p2, "map2":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v0, p0, Lcom/android/settings/datetime/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 283
    .local v0, "value1":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/settings/datetime/ZonePicker$MyComparator;->mSortingKey:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 289
    .local v1, "value2":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/android/settings/datetime/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 290
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 291
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/datetime/ZonePicker$MyComparator;->isComparable(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 292
    const/4 v2, -0x1

    return v2

    .line 295
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/datetime/ZonePicker$MyComparator;->mSortedByName:Z

    if-eqz v2, :cond_2

    .line 296
    iget-object v2, p0, Lcom/android/settings/datetime/ZonePicker$MyComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 298
    :cond_2
    move-object v2, v0

    check-cast v2, Ljava/lang/Comparable;

    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method
