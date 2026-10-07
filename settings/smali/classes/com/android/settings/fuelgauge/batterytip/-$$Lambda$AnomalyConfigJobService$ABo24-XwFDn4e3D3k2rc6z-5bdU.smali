.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$ABo24-XwFDn4e3D3k2rc6z-5bdU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$ABo24-XwFDn4e3D3k2rc6z-5bdU;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$ABo24-XwFDn4e3D3k2rc6z-5bdU;->f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$ABo24-XwFDn4e3D3k2rc6z-5bdU;->f$0:Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/-$$Lambda$AnomalyConfigJobService$ABo24-XwFDn4e3D3k2rc6z-5bdU;->f$1:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;->lambda$onStartJob$0(Lcom/android/settings/fuelgauge/batterytip/AnomalyConfigJobService;Landroid/app/job/JobParameters;)V

    return-void
.end method
