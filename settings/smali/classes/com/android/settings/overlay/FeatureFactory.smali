.class public abstract Lcom/android/settings/overlay/FeatureFactory;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;
    }
.end annotation


# static fields
.field protected static sFactory:Lcom/android/settings/overlay/FeatureFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 58
    sget-object v0, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Lcom/android/settings/overlay/FeatureFactory;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Lcom/android/settings/overlay/FeatureFactory;

    return-object v0

    .line 63
    :cond_0
    const v0, 0x7f1203e0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "clsName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/overlay/FeatureFactory;

    sput-object v1, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Lcom/android/settings/overlay/FeatureFactory;

    .line 71
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    .line 74
    sget-object v1, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Lcom/android/settings/overlay/FeatureFactory;

    return-object v1

    .line 69
    :catch_0
    move-exception v1

    .line 70
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;

    invoke-direct {v2, v1}, Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 65
    .end local v1
    :cond_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "No feature factory configured"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
.end method

.method public abstract getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
.end method

.method public abstract getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
.end method

.method public abstract getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
.end method

.method public abstract getDeviceIndexFeatureProvider()Lcom/android/settings/search/DeviceIndexFeatureProvider;
.end method

.method public abstract getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
.end method

.method public abstract getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;
.end method

.method public abstract getLocaleFeatureProvider()Lcom/android/settings/localepicker/LocaleFeatureProvider;
.end method

.method public abstract getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.end method

.method public abstract getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
.end method

.method public abstract getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
.end method

.method public abstract getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;
.end method

.method public abstract getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;
.end method

.method public abstract getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
.end method

.method public abstract getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
.end method

.method public abstract getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
.end method

.method public abstract getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;
.end method
