.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$wmCpqAavTrPCWLW0gqd6-3n9DOU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/support/v7/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$wmCpqAavTrPCWLW0gqd6-3n9DOU;->f$0:Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$wmCpqAavTrPCWLW0gqd6-3n9DOU;->f$0:Landroid/support/v7/preference/PreferenceScreen;

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$displayResourceTiles$2(Landroid/support/v7/preference/PreferenceScreen;Lcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method
