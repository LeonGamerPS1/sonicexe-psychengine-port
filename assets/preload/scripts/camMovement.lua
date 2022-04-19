function onCreate()
	if songName == 'too-slow' then

		local xx = 500;
        local yy = 570;
        local xx2 = 1050;
        local yy2 = 585;
        local ofs = 25;
        local followchars = true;
        local del = 0;
        local del2 = 0;

		function onUpdate()
			if del > 0 then
				del = del - 1
			end
			if del2 > 0 then
				del2 = del2 - 1
			end
			if followchars == true then
				if mustHitSection == false then
					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'laugh' then
					  triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'iamgod' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				else
		
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
					end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				end
			else
				triggerEvent('Camera Follow Pos','','')
			end
			
		end

	elseif songName == 'you-cant-run' then

		local xx = 500;
		local yy = 470;
		local xx2 = 925;
		local yy2 = 535;
		local ofs = 25;
		local followchars = true;
		local del = 0;
		local del2 = 0;

		function onUpdate()
			if del > 0 then
				del = del - 1
			end
			if del2 > 0 then
				del2 = del2 - 1
			end
			if followchars == true then
				if mustHitSection == false then
					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'laugh' then
					  triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				else
		
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
					end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				end
			else
				triggerEvent('Camera Follow Pos','','')
			end
			
		end

	elseif songName == 'triple-trouble' then

		local xx = 500;
		local yy = 535;
		local xx2 = 1050;
		local yy2 = 535;
		local ofs = 25;
		local followchars = true;
		local del = 0;
		local del2 = 0;

		function onUpdate()
			if del > 0 then
				del = del - 1
			end
			if del2 > 0 then
				del2 = del2 - 1
			end
			if followchars == true then
				if mustHitSection == false then
					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'laugh' then
					  triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				else
		
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
					end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				end
			else
				triggerEvent('Camera Follow Pos','','')
			end
			
		end

	elseif songName == 'milk' then

		local xx = 250;
		local yy = 475;
		local xx2 = 650;
		local yy2 = 445;
		local ofs = 35;
		local followchars = true;
		local del = 0;
		local del2 = 0;

		function onUpdate()
			if del > 0 then
				del = del - 1
			end
			if del2 > 0 then
				del2 = del2 - 1
			end
			if followchars == true then
				if mustHitSection == false then
					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'laugh' then
					  triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				else
		
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
					end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				end
			else
				triggerEvent('Camera Follow Pos','','')
			end
			
		end

	elseif songName == 'endless' then

		local xx = 500;
		local yy = 575;
		local xx2 = 800;
		local yy2 = 645;
		local ofs = 45;
		local followchars = true;
		local del = 0;
		local del2 = 0;

		function onUpdate()
			if del > 0 then
				del = del - 1
			end
			if del2 > 0 then
				del2 = del2 - 1
			end
			if followchars == true then
				if mustHitSection == false then
					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'laugh' then
					  triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				else
		
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
					end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				end
			else
				triggerEvent('Camera Follow Pos','','')
			end
			
		end

	elseif songName == 'cycles' then

        local xx = 500;
        local yy = 745;
        local xx2 = 925;
        local yy2 = 780;
        local ofs = 50;
        local followchars = true;
        local del = 0;
        local del2 = 0;

		function onUpdate()
			if del > 0 then
				del = del - 1
			end
			if del2 > 0 then
				del2 = del2 - 1
			end
			if followchars == true then
				if mustHitSection == false then
					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'laugh' then
					  triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				else
		
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
					end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				end
			else
				triggerEvent('Camera Follow Pos','','')
			end
			
		end

    elseif songName == 'too-fest' then

		local xx = 350;
		local yy = 545;
		local xx2 = 950;
		local yy2 = 600;
		local ofs = 45;
		local followchars = true;
		local del = 0;
		local del2 = 0;

		function onUpdate()
			if del > 0 then
				del = del - 1
			end
			if del2 > 0 then
				del2 = del2 - 1
			end
			if followchars == true then
				if mustHitSection == false then
					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'laugh' then
					  triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				else
		
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
					end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				end
			else
				triggerEvent('Camera Follow Pos','','')
			end
			
		end
		
	elseif songName == 'chaos' then

		local xx = 525;
		local yy = 275;
		local xx2 = 2150;
		local yy2 = 750;
		local ofs = 50;
		local followchars = true;
		local del = 0;
		local del2 = 0;

		function onUpdate()
			if del > 0 then
				del = del - 1
			end
			if del2 > 0 then
				del2 = del2 - 1
			end
			if followchars == true then
				if mustHitSection == false then
					if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
						triggerEvent('Camera Follow Pos',xx-ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
						triggerEvent('Camera Follow Pos',xx+ofs,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
						triggerEvent('Camera Follow Pos',xx,yy-ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
						triggerEvent('Camera Follow Pos',xx,yy+ofs)
					end
					if getProperty('dad.animation.curAnim.name') == 'laugh' then
					  triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
					if getProperty('dad.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx,yy)
					end
				else
		
					if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
						triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
						triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
						triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
					end
					if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
						triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
					end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
						triggerEvent('Camera Follow Pos',xx2,yy2)
					end
				end
			else
				triggerEvent('Camera Follow Pos','','')
			end
			
		end
		
	end

end