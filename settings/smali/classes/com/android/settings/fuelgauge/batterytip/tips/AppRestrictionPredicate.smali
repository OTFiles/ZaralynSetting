.class public Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;
.super Ljava/lang/Object;
.source "AppRestrictionPredicate.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 35
    return-void
.end method


# virtual methods
.method public test(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Z
    .locals 4
    .param p1, "appInfo"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 40
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v2, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/16 v3, 0x46

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppRestrictionPredicate;->test(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Z

    move-result p1

    return p1
.end method
