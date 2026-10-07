.class Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
.super Landroid/support/v7/preference/Preference;
.source "WifiDisplaySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoutePreference"
.end annotation


# instance fields
.field private final mRoute:Landroid/media/MediaRouter$RouteInfo;

.field final synthetic this$0:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "route"    # Landroid/media/MediaRouter$RouteInfo;

    .line 664
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    .line 665
    invoke-direct {p0, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 667
    iput-object p3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    .line 668
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 669
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 670
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setEnabled(Z)V

    .line 671
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 672
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 673
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 674
    const p1, 0x7f1210ac

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 676
    :cond_0
    const p1, 0x7f1210ab

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 679
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 680
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    goto :goto_0

    .line 682
    :cond_2
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOrder(I)V

    .line 683
    invoke-virtual {p3}, Landroid/media/MediaRouter$RouteInfo;->getStatusCode()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 684
    const p1, 0x7f1210ad

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    goto :goto_0

    .line 686
    :cond_3
    const p1, 0x7f1210ae

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setSummary(I)V

    .line 690
    :goto_0
    invoke-virtual {p0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 691
    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 695
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->this$0:Lcom/android/settings/wfd/WifiDisplaySettings;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;->mRoute:Landroid/media/MediaRouter$RouteInfo;

    invoke-static {v0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings;->access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V

    .line 696
    const/4 v0, 0x1

    return v0
.end method
