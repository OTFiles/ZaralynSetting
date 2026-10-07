.class Lcom/android/settings/applications/appops/AppOpsState$2;
.super Ljava/lang/Object;
.source "AppOpsState.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appops/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 460
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$2;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;)I
    .locals 3
    .param p1, "object1"    # Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;
    .param p2, "object2"    # Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    .line 464
    iget-object v0, p0, Lcom/android/settings/applications/appops/AppOpsState$2;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-virtual {p2}, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/appops/AppOpsState$AppEntry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/applications/appops/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 464
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 460
    check-cast p1, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    check-cast p2, Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/appops/AppOpsState$2;->compare(Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;Lcom/android/settings/applications/appops/AppOpsState$AppOpEntry;)I

    move-result p1

    return p1
.end method
