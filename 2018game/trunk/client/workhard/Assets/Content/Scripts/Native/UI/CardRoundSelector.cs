﻿using System;
    /// Spawn card item
    /// </summary>
    /// <returns>item gameObject</returns>
    {
        _onTopChanged = action;
    }
        DOTween.To(x => current = x, current, next, 0.2f)
                        .OnUpdate(Refresh)
                        .OnComplete(() =>
                        {
                            isDraging = false;
                        });

    /// Refresh card item position and scale
    /// </summary>
                    trans.localScale = cardTemplate.transform.localScale * (scale + (1 - scale) * GetScaleValue(i - current));
                }

                if (touchMode == Mode.Horizontal)
                    trans.anchoredPosition = center + new Vector2(offset * GetPosValue(realOffset - centerCardIdx), 0);
                    trans.anchoredPosition = center + new Vector2(0, offset * GetPosValue(realOffset - centerCardIdx));
                trans.localScale = cardTemplate.transform.localScale * (scale + (1 - scale) * GetScaleValue(realOffset - centerCardIdx));