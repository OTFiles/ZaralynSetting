.class Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;
.super Ljava/lang/Object;
.source "SavedAccessPointsWifiSettings.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/SavedAccessPointsWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/wifi/AccessPoint;",
        ">;"
    }
.end annotation


# instance fields
.field final mCollator:Landroid/icu/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Landroid/icu/text/Collator;->getInstance()Landroid/icu/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;->mCollator:Landroid/icu/text/Collator;

    return-void
.end method

.method private nullToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .line 69
    if-nez p1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method


# virtual methods
.method public compare(Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/wifi/AccessPoint;)I
    .locals 3
    .param p1, "ap1"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p2, "ap2"    # Lcom/android/settingslib/wifi/AccessPoint;

    .line 64
    iget-object v0, p0, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;->mCollator:Landroid/icu/text/Collator;

    .line 65
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 60
    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    check-cast p2, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/wifi/SavedAccessPointsWifiSettings$1;->compare(Lcom/android/settingslib/wifi/AccessPoint;Lcom/android/settingslib/wifi/AccessPoint;)I

    move-result p1

    return p1
.end method
