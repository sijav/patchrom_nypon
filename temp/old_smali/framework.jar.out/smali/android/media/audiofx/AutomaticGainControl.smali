.class public Landroid/media/audiofx/AutomaticGainControl;
.super Landroid/media/audiofx/AudioEffect;
.source "AutomaticGainControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutomaticGainControl"


# direct methods
.method private constructor <init>(I)V
    .locals 3
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    sget-object v0, Landroid/media/audiofx/AutomaticGainControl;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AutomaticGainControl;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method

.method public static create(I)Landroid/media/audiofx/AutomaticGainControl;
    .locals 6
    .parameter "audioSession"

    .prologue
    const/4 v0, 0x0

    .local v0, agc:Landroid/media/audiofx/AutomaticGainControl;
    :try_start_0
    new-instance v1, Landroid/media/audiofx/AutomaticGainControl;

    invoke-direct {v1, p0}, Landroid/media/audiofx/AutomaticGainControl;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0           #agc:Landroid/media/audiofx/AutomaticGainControl;
    .local v1, agc:Landroid/media/audiofx/AutomaticGainControl;
    move-object v0, v1

    .end local v1           #agc:Landroid/media/audiofx/AutomaticGainControl;
    :goto_0
    return-object v1

    .restart local v0       #agc:Landroid/media/audiofx/AutomaticGainControl;
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/IllegalArgumentException;
    :try_start_1
    const-string v3, "AutomaticGainControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not implemented on this device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/IllegalArgumentException;
    :goto_1
    move-object v1, v0

    .end local v0           #agc:Landroid/media/audiofx/AutomaticGainControl;
    .restart local v1       #agc:Landroid/media/audiofx/AutomaticGainControl;
    goto :goto_0

    .end local v1           #agc:Landroid/media/audiofx/AutomaticGainControl;
    .restart local v0       #agc:Landroid/media/audiofx/AutomaticGainControl;
    :catch_1
    move-exception v2

    .local v2, e:Ljava/lang/UnsupportedOperationException;
    const-string v3, "AutomaticGainControl"

    const-string v4, "not enough resources"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/lang/UnsupportedOperationException;
    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v2

    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "AutomaticGainControl"

    const-string v4, "not enough memory"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    sget-object v0, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    invoke-static {v0}, Landroid/media/audiofx/AudioEffect;->isEffectTypeAvailable(Ljava/util/UUID;)Z

    move-result v0

    return v0
.end method
