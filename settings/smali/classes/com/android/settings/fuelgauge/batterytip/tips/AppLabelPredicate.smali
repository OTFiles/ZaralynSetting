.class public Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;
.super Ljava/lang/Object;
.source "AppLabelPredicate.java"

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

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->mContext:Landroid/content/Context;

    .line 36
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 37
    return-void
.end method


# virtual methods
.method public test(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Z
    .locals 2
    .param p1, "appInfo"    # Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    .line 42
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 30
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/AppLabelPredicate;->test(Lcom/android/settings/fuelgauge/batterytip/AppInfo;)Z

    move-result p1

    return p1
.end method
