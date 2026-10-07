.class Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;
.super Ljava/lang/Object;
.source "RegionSearchPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegionInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCollator:Landroid/icu/text/Collator;


# direct methods
.method constructor <init>(Landroid/icu/text/Collator;)V
    .locals 0
    .param p1, "collator"    # Landroid/icu/text/Collator;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;->mCollator:Landroid/icu/text/Collator;

    .line 201
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;)I
    .locals 3
    .param p1, "r1"    # Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;
    .param p2, "r2"    # Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;

    .line 205
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;->mCollator:Landroid/icu/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 196
    check-cast p1, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;

    check-cast p2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionInfoComparator;->compare(Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;Lcom/android/settings/datetime/timezone/RegionSearchPicker$RegionItem;)I

    move-result p1

    return p1
.end method
