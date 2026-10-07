.class public final synthetic Lcom/android/settings/applications/-$$Lambda$ManageDomainUrls$agHbI5vf9m7UaPnJCYH2ithkZhk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/applications/ManageDomainUrls;

.field private final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/ManageDomainUrls;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/-$$Lambda$ManageDomainUrls$agHbI5vf9m7UaPnJCYH2ithkZhk;->f$0:Lcom/android/settings/applications/ManageDomainUrls;

    iput-object p2, p0, Lcom/android/settings/applications/-$$Lambda$ManageDomainUrls$agHbI5vf9m7UaPnJCYH2ithkZhk;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/-$$Lambda$ManageDomainUrls$agHbI5vf9m7UaPnJCYH2ithkZhk;->f$0:Lcom/android/settings/applications/ManageDomainUrls;

    iget-object v1, p0, Lcom/android/settings/applications/-$$Lambda$ManageDomainUrls$agHbI5vf9m7UaPnJCYH2ithkZhk;->f$1:Landroid/content/Intent;

    invoke-static {v0, v1, p1}, Lcom/android/settings/applications/ManageDomainUrls;->lambda$onRebuildComplete$0(Lcom/android/settings/applications/ManageDomainUrls;Landroid/content/Intent;Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
