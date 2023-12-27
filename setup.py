from setuptools import setup, find_packages

setup(
    name='caliban-mythbound-discord-bot',
    version='0.0.001-alpha',
    author='Jay Telford',
    author_email='hello@jaytelford.me',
    description='A discord bot for the Mythbound Games discord server, currently in the alpha stage of development',
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url='https://github.com/j-telford/caliban-mythbound-discord-bot',
    packages=find_packages(),
    classifiers=[
        'Development Status :: 3 - Alpha',
        'Intended Audience :: Developers',
        'License :: OSI Approved :: MIT License',
        'Programming Language :: Python :: 3',
        'Programming Language :: Python :: 3.8',
    ],
    python_requires='>=3.8',
    install_requires=[
        # List your production dependencies here
        # e.g., 'requests', 'discord.py'
    ],
    extras_require={
        'dev': [
            'astroid==3.0.2',
            'black==23.12.1',
            'click==8.1.7',
            'colorama==0.4.6',
            'dill==0.3.7',
            'isort==5.13.2',
            'mccabe==0.7.0',
            'mypy-extensions==1.0.0',
            'packaging==23.2',
            'pathspec==0.12.1',
            'pip==23.3.2',
            'platformdirs==4.1.0',
            'pylint==3.0.3',
            'tomlkit==0.12.3',
            'setuptools==69.0.3'
        ]
    }
)
