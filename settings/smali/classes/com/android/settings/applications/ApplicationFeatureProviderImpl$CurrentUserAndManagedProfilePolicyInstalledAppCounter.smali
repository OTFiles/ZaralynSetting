.class Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;
.super Lcom/android/settings/applications/InstalledAppCounter;
.source "ApplicationFeatureProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationFeatureProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrentUserAndManagedProfilePolicyInstalledAppCounter"
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p3, "callback"    # Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    .line 151
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/applications/InstalledAppCounter;-><init>(Landroid/content/Context;ILcom/android/settingslib/wrapper/PackageManagerWrapper;)V

    .line 152
    iput-object p3, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    .line 153
    return-void
.end method


# virtual methods
.method protected onCountComplete(I)V
    .locals 1
    .param p1, "num"    # I

    .line 157
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl$CurrentUserAndManagedProfilePolicyInstalledAppCounter;->mCallback:Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;

    invoke-interface {v0, p1}, Lcom/android/settings/applications/ApplicationFeatureProvider$NumberOfAppsCallback;->onNumberOfAppsResult(I)V

    .line 158
    return-void
.end method
