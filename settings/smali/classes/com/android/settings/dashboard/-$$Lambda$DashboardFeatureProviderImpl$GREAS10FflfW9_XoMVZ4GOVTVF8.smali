.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/support/v7/preference/Preference;

.field private final synthetic f$1:Landroid/graphics/drawable/Icon;


# direct methods
.method public synthetic constructor <init>(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Icon;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;->f$0:Landroid/support/v7/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;->f$1:Landroid/graphics/drawable/Icon;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;->f$0:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFeatureProviderImpl$GREAS10FflfW9_XoMVZ4GOVTVF8;->f$1:Landroid/graphics/drawable/Icon;

    invoke-static {v0, v1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;->lambda$bindIcon$3(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Icon;)V

    return-void
.end method
