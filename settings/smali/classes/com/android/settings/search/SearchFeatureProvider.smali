.class public interface abstract Lcom/android/settings/search/SearchFeatureProvider;
.super Ljava/lang/Object;
.source "SearchFeatureProvider.java"


# static fields
.field public static final SEARCH_UI_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.SETTINGS_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/search/SearchFeatureProvider;->SEARCH_UI_INTENT:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public abstract getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;
.end method

.method public getSettingsIntelligencePkgName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "com.android.settings.intelligence"

    return-object v0
.end method

.method public abstract verifyLaunchSearchResultPageCaller(Landroid/content/Context;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
