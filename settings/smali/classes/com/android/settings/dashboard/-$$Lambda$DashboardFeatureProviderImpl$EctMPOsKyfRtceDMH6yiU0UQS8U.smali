.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field private final synthetic f$1:Landroid/app/Activity;

.field private final synthetic f$2:Lcom/android/settingslib/drawer/Tile;

.field private final synthetic f$3:Landroid/content/Intent;

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$1:Landroid/app/Activity;

    iput-object p3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$2:Lcom/android/settingslib/drawer/Tile;

    iput-object p4, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$3:Landroid/content/Intent;

    iput p5, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$4:I

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$0:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$1:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$2:Lcom/android/settingslib/drawer/Tile;

    iget-object v3, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$3:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$EctMPOsKyfRtceDMH6yiU0UQS8U;->f$4:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindPreferenceToTile$0(Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;Landroid/app/Activity;Lcom/android/settingslib/drawer/Tile;Landroid/content/Intent;ILandroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
