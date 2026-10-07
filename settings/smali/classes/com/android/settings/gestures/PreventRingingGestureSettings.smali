.class public Lcom/android/settings/gestures/PreventRingingGestureSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PreventRingingGestureSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Lcom/android/settings/gestures/PreventRingingGestureSettings$1;

    invoke-direct {v0}, Lcom/android/settings/gestures/PreventRingingGestureSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/gestures/PreventRingingGestureSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 61
    const v0, 0x7f1206a6

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "RingingGestureSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 46
    const/16 v0, 0x550

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 56
    const v0, 0x7f15008b

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 42
    return-void
.end method
